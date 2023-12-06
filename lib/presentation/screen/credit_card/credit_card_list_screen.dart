import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_clean/common/data.dart';
import 'package:flutter_bloc_clean/common/enum.dart';
import 'package:flutter_bloc_clean/domain/entity/card/card_list/card_list_entity.dart';
import 'package:flutter_bloc_clean/presentation/bloc/credit_card_billed/credit_card_billed_cubit.dart';
import 'package:flutter_bloc_clean/presentation/bloc/credit_card_list/credit_card_list_cubit.dart';
import 'package:flutter_bloc_clean/presentation/bloc/credit_card_unbilled/credit_unbilled_cubit.dart';
import 'package:flutter_bloc_clean/presentation/component/tabbar/custom_tabbar.dart';
import 'package:flutter_bloc_clean/presentation/screen/credit_card/widget/account_info_widget.dart';
import 'package:flutter_bloc_clean/presentation/screen/credit_card/widget/billed_widget.dart';
import 'package:flutter_bloc_clean/presentation/screen/credit_card/widget/un_billed_widget.dart';

class CreditCardListScreen extends StatefulWidget {
  const CreditCardListScreen({Key? key}) : super(key: key);

  @override
  State<CreditCardListScreen> createState() => _CreditCardListScreenState();
}

class _CreditCardListScreenState extends State<CreditCardListScreen> with TickerProviderStateMixin{

  late PageController _pageController;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.7);
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _pageController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CreditCardListCubit>(create: (_) => CreditCardListCubit()),
        BlocProvider<CreditUnbilledCubit>(create: (_) => CreditUnbilledCubit()),
        BlocProvider<CreditCardBilledCubit>(create: (_) => CreditCardBilledCubit())
      ],
      child: Container(
        color: Colors.white,
        child: SafeArea(
          child: Scaffold(
            body: RefreshIndicator(
              onRefresh: () async {
                context.read<CreditCardListCubit>().refreshCreditCard(AppData.citizenId);
              },
              child: BlocConsumer<CreditCardListCubit, CreditCardListState>(
                listenWhen: (previous, current) => previous.loadApiStatus != current.loadApiStatus,
                listener: (context, state) {
                  if (state.loadApiStatus == LoadApiStatus.success) {
                    final cardNumber = state.creditCards[state.currentIndex].cardNumber;
                    _changeStatement(context, cardNumber);
                  }
                },
                builder: (context, state) {

                  if (state.loadApiStatus == LoadApiStatus.initial) {
                    context.read<CreditCardListCubit>().getCreditCard(AppData.citizenId);
                    return Container();
                  }

                  if (state.loadApiStatus == LoadApiStatus.loading) {
                    return const Center(child: CircularProgressIndicator(),);
                  }

                  if (state.loadApiStatus == LoadApiStatus.error) {
                    return Center(child: Text(state.errorMessage),);
                  }

                  if (state.creditCards.isEmpty) {
                    return const Center(child: Text("ไม่มีข้อมูล"));
                  }

                  return Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: _buildCreditCardImage(context, state.creditCards)
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          children: [
                            CustomTabBar().commonTabBar(
                              tabController: _tabController,
                              tabBarTitles: ["ACCOUNT INFO", "UNBILLED", "BILLED"]
                            ),
                            Expanded(
                              child: TabBarView(
                                  controller: _tabController,
                                  children: [
                                    _buildAccountInfoWidget(state.creditCards[state.currentIndex]),
                                    _buildUnBilledWidget(context),
                                    _buildBilledWidget(context, state.creditCards[state.currentIndex].cardNumber)
                                  ]
                              ),
                            )
                          ],
                        )
                      )
                    ],
                  );
                }
              ),
            )
          ),
        ),
      )
    );
  }

  Widget _buildCreditCardImage(BuildContext context, List<CreditCardEntity> creditCards) {
    return PageView.builder(
        physics: const ClampingScrollPhysics(),
        itemCount: creditCards.length,
        onPageChanged: (index) {
          context.read<CreditCardListCubit>().updateCurrentIndex(index);
          final cardNumber = creditCards[index].cardNumber;
          _changeStatement(context, cardNumber);
        },
        itemBuilder: (context, index) {
          return Image.network(creditCards[index].cardImageUrl);
        }
    );
  }

  void _changeStatement(BuildContext context, String cardNumber) {
    context.read<CreditUnbilledCubit>().findAllUnBilled(cardNumber);
    context.read<CreditCardBilledCubit>().findAllBilledByDate(cardNumber);
  }

  Widget _buildAccountInfoWidget (CreditCardEntity creditCards) {
    return AccountInfoWidget(
        available: creditCards.availableCredit,
        creditLimit: creditCards.creditLimit,
        minPay: creditCards.minPay,
        fullPay: creditCards.fullPay,
        statementDate: creditCards.statementDate!,
        dueDate: creditCards.dueDate!,
    );
  }

  Widget _buildUnBilledWidget(BuildContext context) {
    return BlocBuilder<CreditUnbilledCubit, CreditUnbilledState>(
      builder: (context, state) {
        return state.when(
          initial: () => Container(),
          loading: () => const Center(child: CircularProgressIndicator(),),
          loaded: (data) => UnBilledWidget(unBilledEntity: data),
          error: (message) => Center(child: Text(message),)
        );
      }
    );
  }

  Widget _buildBilledWidget(BuildContext context, String cardNumber) {
    return BlocBuilder<CreditCardBilledCubit, CreditCardBilledState>(
      builder: (context, state) {
        if (state.loadApiStatus == LoadApiStatus.loading) {
          return const Center(child: CircularProgressIndicator(),);
        }

        if (state.loadApiStatus == LoadApiStatus.error) {
          return Center(child: Text(state.errorMessage));
        }

        return BilledWidget(
          billedStatement: state.billedStatement,
          selectedDate: state.selectedDate,
          onChange: (newValue) {
            context.read<CreditCardBilledCubit>().refreshNewBilled(cardNumber, newValue);
          },
        );

      }
    );
  }

}
