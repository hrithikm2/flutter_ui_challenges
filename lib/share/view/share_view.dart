import 'package:draggable/l10n/l10n.dart';
import 'package:draggable/share/cubit/share_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShareView extends StatelessWidget {
  const ShareView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.counterAppBarTitle)),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                hintText: 'Enter some text to share',
                border: OutlineInputBorder(),
              ),
              controller: BlocProvider.of<CounterCubit>(context).controller,
              maxLines: 5,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => context.read<CounterCubit>().send(
                    context.read<CounterCubit>().controller.text,
                  ),
              child: const Text('Send'),
            )
          ],
        ),
      ),
    );
  }
}
