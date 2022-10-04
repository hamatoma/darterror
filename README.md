# darterror

Demonstrate a compiler error

# ToDo
```
dart pub get
dart compile exe bin/pollsam.dart -o pollsam
```
Result:
```
Unhandled exception:
Unexpected type InvalidType InvalidType(<invalid>)
#0      TypesBuilder.fromStaticType (package:vm/transformations/type_flow/types.dart:113:7)
#1      SummaryCollector._staticType (package:vm/transformations/type_flow/summary_collector.dart:1211:21)
#2      SummaryCollector._makeCall (package:vm/transformations/type_flow/summary_collector.dart:1118:26)
#3      SummaryCollector._handlePropertyGet (package:vm/transformations/type_flow/summary_collector.dart:1760:16)
#4      SummaryCollector.visitInstanceGet (package:vm/transformations/type_flow/summary_collector.dart:1773:12)
#5      InstanceGet.accept (package:kernel/ast.dart:4476:44)
#6      SummaryCollector._visit (package:vm/transformations/type_flow/summary_collector.dart:880:44)
#7      SummaryCollector.visitVariableDeclaration (package:vm/transformations/type_flow/summary_collector.dart:2226:43)
#8      VariableDeclaration.accept (package:kernel/ast.dart:10952:43)
#9      List.forEach (dart:core-patch/growable_array.dart:416:8)
#10     SummaryCollector.visitBlock (package:vm/transformations/type_flow/summary_collector.dart:2009:21)
#11     Block.accept (package:kernel/ast.dart:9365:43)
#12     SummaryCollector._visitWithoutResult (package:vm/transformations/type_flow/summary_collector.dart:883:10)
#13     SummaryCollector.visitForStatement (package:vm/transformations/type_flow/summary_collector.dart:2095:5)
#14     ForStatement.accept (package:kernel/ast.dart:9833:43)
#15     List.forEach (dart:core-patch/growable_array.dart:416:8)
#16     SummaryCollector.visitBlock (package:vm/transformations/type_flow/summary_collector.dart:2009:21)
#17     Block.accept (package:kernel/ast.dart:9365:43)
#18     List.forEach (dart:core-patch/growable_array.dart:416:8)
#19     SummaryCollector.visitBlock (package:vm/transformations/type_flow/summary_collector.dart:2009:21)
#20     Block.accept (package:kernel/ast.dart:9365:43)
#21     SummaryCollector._visitWithoutResult (package:vm/transformations/type_flow/summary_collector.dart:883:10)
#22     SummaryCollector.createSummary (package:vm/transformations/type_flow/summary_collector.dart:757:9)
#23     TypeFlowAnalysis.getSummary (package:vm/transformations/type_flow/analysis.dart:1579:55)
#24     _DirectInvocation._processFunction (package:vm/transformations/type_flow/analysis.dart:298:42)
#25     _DirectInvocation.process (package:vm/transformations/type_flow/analysis.dart:226:14)
#26     _WorkList.processInvocation (package:vm/transformations/type_flow/analysis.dart:1473:27)
#27     _DispatchableInvocation.process.<anonymous closure> (package:vm/transformations/type_flow/analysis.dart:449:44)
#28     _LinkedHashMapMixin.forEach (dart:collection-patch/compact_hash.dart:614:13)
#29     _DispatchableInvocation.process (package:vm/transformations/type_flow/analysis.dart:423:12)
#30     _WorkList.processInvocation (package:vm/transformations/type_flow/analysis.dart:1473:27)
#31     TypeFlowAnalysis.applyCall (package:vm/transformations/type_flow/analysis.dart:1724:23)
#32     Call.apply (package:vm/transformations/type_flow/summary.dart:268:31)
#33     Summary.apply (package:vm/transformations/type_flow/summary.dart:724:33)
#34     _DirectInvocation._processFunction (package:vm/transformations/type_flow/analysis.dart:307:24)
#35     _DirectInvocation.process (package:vm/transformations/type_flow/analysis.dart:226:14)
#36     _WorkList.processInvocation (package:vm/transformations/type_flow/analysis.dart:1473:27)
#37     _WorkList.process (package:vm/transformations/type_flow/analysis.dart:1415:7)
#38     TypeFlowAnalysis.process (package:vm/transformations/type_flow/analysis.dart:1605:14)
#39     transformComponent (package:vm/transformations/type_flow/transformer.dart:112:20)
#40     runGlobalTransformations (package:vm/kernel_front_end.dart:489:20)
#41     compileToKernel (package:vm/kernel_front_end.dart:408:11)
<asynchronous suspension>
#42     runCompiler (package:vm/kernel_front_end.dart:294:19)
<asynchronous suspension>
#43     main (file:///b/s/w/ir/cache/builder/sdk/pkg/vm/bin/gen_kernel.dart:34:19)
<asynchronous suspension>
Error: AOT compilation failed
Generating AOT kernel dill failed!
```

