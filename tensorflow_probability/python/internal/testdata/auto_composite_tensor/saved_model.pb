��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype�
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
�
If
cond"Tcond
input2Tin
output2Tout"
Tcondtype"
Tin
list(type)("
Tout
list(type)("
then_branchfunc"
else_branchfunc" 
output_shapeslist(shape)
 �
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�

NoOp
U
NotEqual
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(�
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.6.02unknown8�m
q
VariableVarHandleOp*
_output_shapes
: *
dtype0*
shape:���������*
shared_name
Variable
j
Variable/Read/ReadVariableOpReadVariableOpVariable*#
_output_shapes
:���������*
dtype0

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*p
valuegBe B_

	scale

signatures
><
VARIABLE_VALUEVariable scale/.ATTRIBUTES/VARIABLE_VALUE
 
Z
serving_default_bPlaceholder*
_output_shapes
:*
dtype0*
shape:
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_bVariable*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference_signature_wrapper_3458
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameVariable/Read/ReadVariableOpConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *&
f!R
__inference__traced_save_3484
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__traced_restore_3497�a
�
v
"__inference_signature_wrapper_3458
b
unknown:���������
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallbunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *"
fR
__inference_make_bij_34492
StatefulPartitionedCalln
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
:2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

:: 22
StatefulPartitionedCallStatefulPartitionedCall:= 9

_output_shapes
:

_user_specified_nameb
�

�
6scale_2_assert_none_equal_Assert_AssertGuard_true_3428W
Sscale_2_assert_none_equal_assert_assertguard_identity_scale_2_assert_none_equal_all
<
8scale_2_assert_none_equal_assert_assertguard_placeholder>
:scale_2_assert_none_equal_assert_assertguard_placeholder_1;
7scale_2_assert_none_equal_assert_assertguard_identity_1
�
1scale_2/assert_none_equal/Assert/AssertGuard/NoOpNoOp*
_output_shapes
 23
1scale_2/assert_none_equal/Assert/AssertGuard/NoOp�
5scale_2/assert_none_equal/Assert/AssertGuard/IdentityIdentitySscale_2_assert_none_equal_assert_assertguard_identity_scale_2_assert_none_equal_all2^scale_2/assert_none_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 27
5scale_2/assert_none_equal/Assert/AssertGuard/Identity�
7scale_2/assert_none_equal/Assert/AssertGuard/Identity_1Identity>scale_2/assert_none_equal/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: 29
7scale_2/assert_none_equal/Assert/AssertGuard/Identity_1"{
7scale_2_assert_none_equal_assert_assertguard_identity_1@scale_2/assert_none_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

: :: : 

_output_shapes
: : 

_output_shapes
::

_output_shapes
: 
�
�
 __inference__traced_restore_3497
file_prefix0
assignvariableop_variable:���������

identity_2��AssignVariableOp�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*S
valueJBHB scale/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes

::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOpassignvariableop_variableIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp9
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp{

Identity_1Identityfile_prefix^AssignVariableOp^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_1c

Identity_2IdentityIdentity_1:output:0^NoOp_1*
T0*
_output_shapes
: 2

Identity_2e
NoOp_1NoOp^AssignVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"!

identity_2Identity_2:output:0*
_input_shapes
: : 2$
AssignVariableOpAssignVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
7scale_2_assert_none_equal_Assert_AssertGuard_false_3429U
Qscale_2_assert_none_equal_assert_assertguard_assert_scale_2_assert_none_equal_all
;
7scale_2_assert_none_equal_assert_assertguard_assert_addE
Ascale_2_assert_none_equal_assert_assertguard_assert_scale_2_zeros;
7scale_2_assert_none_equal_assert_assertguard_identity_1
��3scale_2/assert_none_equal/Assert/AssertGuard/Assert�
:scale_2/assert_none_equal/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*3
value*B( B"Argument `scale` must be non-zero.2<
:scale_2/assert_none_equal/Assert/AssertGuard/Assert/data_0�
:scale_2/assert_none_equal/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x != y did not hold element-wise:2<
:scale_2/assert_none_equal/Assert/AssertGuard/Assert/data_1�
:scale_2/assert_none_equal/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*
valueB Bx (add:0) = 2<
:scale_2/assert_none_equal/Assert/AssertGuard/Assert/data_2�
:scale_2/assert_none_equal/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*'
valueB By (scale_2/zeros:0) = 2<
:scale_2/assert_none_equal/Assert/AssertGuard/Assert/data_4�
3scale_2/assert_none_equal/Assert/AssertGuard/AssertAssertQscale_2_assert_none_equal_assert_assertguard_assert_scale_2_assert_none_equal_allCscale_2/assert_none_equal/Assert/AssertGuard/Assert/data_0:output:0Cscale_2/assert_none_equal/Assert/AssertGuard/Assert/data_1:output:0Cscale_2/assert_none_equal/Assert/AssertGuard/Assert/data_2:output:07scale_2_assert_none_equal_assert_assertguard_assert_addCscale_2/assert_none_equal/Assert/AssertGuard/Assert/data_4:output:0Ascale_2_assert_none_equal_assert_assertguard_assert_scale_2_zeros*
T

2*
_output_shapes
 25
3scale_2/assert_none_equal/Assert/AssertGuard/Assert�
5scale_2/assert_none_equal/Assert/AssertGuard/IdentityIdentityQscale_2_assert_none_equal_assert_assertguard_assert_scale_2_assert_none_equal_all4^scale_2/assert_none_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 27
5scale_2/assert_none_equal/Assert/AssertGuard/Identity�
7scale_2/assert_none_equal/Assert/AssertGuard/Identity_1Identity>scale_2/assert_none_equal/Assert/AssertGuard/Identity:output:02^scale_2/assert_none_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 29
7scale_2/assert_none_equal/Assert/AssertGuard/Identity_1�
1scale_2/assert_none_equal/Assert/AssertGuard/NoOpNoOp4^scale_2/assert_none_equal/Assert/AssertGuard/Assert*"
_acd_function_control_output(*
_output_shapes
 23
1scale_2/assert_none_equal/Assert/AssertGuard/NoOp"{
7scale_2_assert_none_equal_assert_assertguard_identity_1@scale_2/assert_none_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

: :: 2j
3scale_2/assert_none_equal/Assert/AssertGuard/Assert3scale_2/assert_none_equal/Assert/AssertGuard/Assert: 

_output_shapes
: : 

_output_shapes
::

_output_shapes
: 
�
�
__inference__traced_save_3484
file_prefix'
#savev2_variable_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*S
valueJBHB scale/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0#savev2_variable_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*&
_input_shapes
: :���������: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:)%
#
_output_shapes
:���������:

_output_shapes
: 
�
�
__inference_make_bij_3449
b.
readvariableop_resource:���������
identity��ReadVariableOp�,scale_2/assert_none_equal/Assert/AssertGuard}
ReadVariableOpReadVariableOpreadvariableop_resource*#
_output_shapes
:���������*
dtype02
ReadVariableOpS
addAddV2ReadVariableOp:value:0b*
T0*
_output_shapes
:2
addc
scale_2/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
scale_2/zeros�
"scale_2/assert_none_equal/NotEqualNotEqualadd:z:0scale_2/zeros:output:0*
T0*
_output_shapes
:2$
"scale_2/assert_none_equal/NotEqual�
scale_2/assert_none_equal/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
scale_2/assert_none_equal/Const�
scale_2/assert_none_equal/AllAll&scale_2/assert_none_equal/NotEqual:z:0(scale_2/assert_none_equal/Const:output:0*
_output_shapes
: 2
scale_2/assert_none_equal/All�
&scale_2/assert_none_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*3
value*B( B"Argument `scale` must be non-zero.2(
&scale_2/assert_none_equal/Assert/Const�
(scale_2/assert_none_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x != y did not hold element-wise:2*
(scale_2/assert_none_equal/Assert/Const_1�
(scale_2/assert_none_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*
valueB Bx (add:0) = 2*
(scale_2/assert_none_equal/Assert/Const_2�
(scale_2/assert_none_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*'
valueB By (scale_2/zeros:0) = 2*
(scale_2/assert_none_equal/Assert/Const_3�
,scale_2/assert_none_equal/Assert/AssertGuardIf&scale_2/assert_none_equal/All:output:0&scale_2/assert_none_equal/All:output:0add:z:0scale_2/zeros:output:0*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *J
else_branch;R9
7scale_2_assert_none_equal_Assert_AssertGuard_false_3429*
output_shapes
: *I
then_branch:R8
6scale_2_assert_none_equal_Assert_AssertGuard_true_34282.
,scale_2/assert_none_equal/Assert/AssertGuard�
5scale_2/assert_none_equal/Assert/AssertGuard/IdentityIdentity5scale_2/assert_none_equal/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: 27
5scale_2/assert_none_equal/Assert/AssertGuard/Identity~
scale_2/group_depsNoOp6^scale_2/assert_none_equal/Assert/AssertGuard/Identity*
_output_shapes
 2
scale_2/group_depsU
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
:2

Identity�
NoOpNoOp^ReadVariableOp-^scale_2/assert_none_equal/Assert/AssertGuard*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

:: 2 
ReadVariableOpReadVariableOp2\
,scale_2/assert_none_equal/Assert/AssertGuard,scale_2/assert_none_equal/Assert/AssertGuard:= 9

_output_shapes
:

_user_specified_nameb"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
"
b
serving_default_b:0�
output_0�*�
����
`
�

scale�
@�=

	log_scale
 

namejscale_2_1_1

validate_argsp
�
j
parameters
� 
�
jnametfp.bijectors.Scale_ACTTypeSpec#
StatefulPartitionedCall:0tensorflow/serving/predict:�
G
	scale

signatures
make_bij"
_generic_user_object
:���������2Variable
,
serving_default"
signature_map
�2�
__inference_make_bij_3449�
���
FullArgSpec
args�
jself
jb
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *���
������
`
�

scale�
:�7

	log_scale
 

namejscale

validate_argsp
�
j
parameters
� 
�
jnametfp.bijectors.Scale_ACTTypeSpec
�B�
"__inference_signature_wrapper_3458b"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
__inference_make_bij_3449����
���
������
`
�

scale�
:�7

	log_scale
 

namejscale

validate_argsp
�
j
parameters
� 
�
jnametfp.bijectors.Scale_ACTTypeSpec
� "������
`
�

scale�
>�;

	log_scale
 

namej	scale_2_1

validate_argsp
�
j
parameters
� 
�
jnametfp.bijectors.Scale_ACTTypeSpec�
"__inference_signature_wrapper_3458�"�
� 
�

b�
b"���
�
output_0������
`
�

scale�
@�=

	log_scale
 

namejscale_2_1_1

validate_argsp
�
j
parameters
� 
�
jnametfp.bijectors.Scale_ACTTypeSpec