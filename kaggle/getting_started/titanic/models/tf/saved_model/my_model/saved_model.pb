
ç
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
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
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
0
Sigmoid
x"T
y"T"
Ttype:

2
Á
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
executor_typestring ¨
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
-
Tanh
x"T
y"T"
Ttype:

2

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.7.02v2.7.0-rc1-69-gc256c071bb28

Hidden_Layer_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*&
shared_nameHidden_Layer_1/kernel

)Hidden_Layer_1/kernel/Read/ReadVariableOpReadVariableOpHidden_Layer_1/kernel*
_output_shapes

:
*
dtype0
~
Hidden_Layer_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameHidden_Layer_1/bias
w
'Hidden_Layer_1/bias/Read/ReadVariableOpReadVariableOpHidden_Layer_1/bias*
_output_shapes
:
*
dtype0

Hidden_Layer_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*&
shared_nameHidden_Layer_2/kernel

)Hidden_Layer_2/kernel/Read/ReadVariableOpReadVariableOpHidden_Layer_2/kernel*
_output_shapes

:

*
dtype0
~
Hidden_Layer_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameHidden_Layer_2/bias
w
'Hidden_Layer_2/bias/Read/ReadVariableOpReadVariableOpHidden_Layer_2/bias*
_output_shapes
:
*
dtype0

Output_Layer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*$
shared_nameOutput_Layer/kernel
{
'Output_Layer/kernel/Read/ReadVariableOpReadVariableOpOutput_Layer/kernel*
_output_shapes

:
*
dtype0
z
Output_Layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameOutput_Layer/bias
s
%Output_Layer/bias/Read/ReadVariableOpReadVariableOpOutput_Layer/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

Adam/Hidden_Layer_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*-
shared_nameAdam/Hidden_Layer_1/kernel/m

0Adam/Hidden_Layer_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Hidden_Layer_1/kernel/m*
_output_shapes

:
*
dtype0

Adam/Hidden_Layer_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*+
shared_nameAdam/Hidden_Layer_1/bias/m

.Adam/Hidden_Layer_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/Hidden_Layer_1/bias/m*
_output_shapes
:
*
dtype0

Adam/Hidden_Layer_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*-
shared_nameAdam/Hidden_Layer_2/kernel/m

0Adam/Hidden_Layer_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Hidden_Layer_2/kernel/m*
_output_shapes

:

*
dtype0

Adam/Hidden_Layer_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*+
shared_nameAdam/Hidden_Layer_2/bias/m

.Adam/Hidden_Layer_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/Hidden_Layer_2/bias/m*
_output_shapes
:
*
dtype0

Adam/Output_Layer/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*+
shared_nameAdam/Output_Layer/kernel/m

.Adam/Output_Layer/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Output_Layer/kernel/m*
_output_shapes

:
*
dtype0

Adam/Output_Layer/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/Output_Layer/bias/m

,Adam/Output_Layer/bias/m/Read/ReadVariableOpReadVariableOpAdam/Output_Layer/bias/m*
_output_shapes
:*
dtype0

Adam/Hidden_Layer_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*-
shared_nameAdam/Hidden_Layer_1/kernel/v

0Adam/Hidden_Layer_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Hidden_Layer_1/kernel/v*
_output_shapes

:
*
dtype0

Adam/Hidden_Layer_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*+
shared_nameAdam/Hidden_Layer_1/bias/v

.Adam/Hidden_Layer_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/Hidden_Layer_1/bias/v*
_output_shapes
:
*
dtype0

Adam/Hidden_Layer_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*-
shared_nameAdam/Hidden_Layer_2/kernel/v

0Adam/Hidden_Layer_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Hidden_Layer_2/kernel/v*
_output_shapes

:

*
dtype0

Adam/Hidden_Layer_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*+
shared_nameAdam/Hidden_Layer_2/bias/v

.Adam/Hidden_Layer_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/Hidden_Layer_2/bias/v*
_output_shapes
:
*
dtype0

Adam/Output_Layer/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*+
shared_nameAdam/Output_Layer/kernel/v

.Adam/Output_Layer/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Output_Layer/kernel/v*
_output_shapes

:
*
dtype0

Adam/Output_Layer/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/Output_Layer/bias/v

,Adam/Output_Layer/bias/v/Read/ReadVariableOpReadVariableOpAdam/Output_Layer/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
´(
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ï'
valueå'Bâ' BÛ'
ó
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
 	keras_api
¬
!iter

"beta_1

#beta_2
	$decay
%learning_ratemJmKmLmMmNmOvPvQvRvSvTvU
*
0
1
2
3
4
5
*
0
1
2
3
4
5
 
­
&non_trainable_variables

'layers
(metrics
)layer_regularization_losses
*layer_metrics
	variables
trainable_variables
regularization_losses
 
a_
VARIABLE_VALUEHidden_Layer_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEHidden_Layer_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
+non_trainable_variables

,layers
-metrics
.layer_regularization_losses
/layer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
­
0non_trainable_variables

1layers
2metrics
3layer_regularization_losses
4layer_metrics
	variables
trainable_variables
regularization_losses
a_
VARIABLE_VALUEHidden_Layer_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEHidden_Layer_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
5non_trainable_variables

6layers
7metrics
8layer_regularization_losses
9layer_metrics
	variables
trainable_variables
regularization_losses
_]
VARIABLE_VALUEOutput_Layer/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEOutput_Layer/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
	variables
trainable_variables
regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
3

?0
@1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	Atotal
	Bcount
C	variables
D	keras_api
D
	Etotal
	Fcount
G
_fn_kwargs
H	variables
I	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

A0
B1

C	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

E0
F1

H	variables

VARIABLE_VALUEAdam/Hidden_Layer_1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/Hidden_Layer_1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/Hidden_Layer_2/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/Hidden_Layer_2/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/Output_Layer/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/Output_Layer/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/Hidden_Layer_1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/Hidden_Layer_1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/Hidden_Layer_2/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/Hidden_Layer_2/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/Output_Layer/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/Output_Layer/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

$serving_default_Hidden_Layer_1_inputPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
Ë
StatefulPartitionedCallStatefulPartitionedCall$serving_default_Hidden_Layer_1_inputHidden_Layer_1/kernelHidden_Layer_1/biasHidden_Layer_2/kernelHidden_Layer_2/biasOutput_Layer/kernelOutput_Layer/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_751393
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename)Hidden_Layer_1/kernel/Read/ReadVariableOp'Hidden_Layer_1/bias/Read/ReadVariableOp)Hidden_Layer_2/kernel/Read/ReadVariableOp'Hidden_Layer_2/bias/Read/ReadVariableOp'Output_Layer/kernel/Read/ReadVariableOp%Output_Layer/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp0Adam/Hidden_Layer_1/kernel/m/Read/ReadVariableOp.Adam/Hidden_Layer_1/bias/m/Read/ReadVariableOp0Adam/Hidden_Layer_2/kernel/m/Read/ReadVariableOp.Adam/Hidden_Layer_2/bias/m/Read/ReadVariableOp.Adam/Output_Layer/kernel/m/Read/ReadVariableOp,Adam/Output_Layer/bias/m/Read/ReadVariableOp0Adam/Hidden_Layer_1/kernel/v/Read/ReadVariableOp.Adam/Hidden_Layer_1/bias/v/Read/ReadVariableOp0Adam/Hidden_Layer_2/kernel/v/Read/ReadVariableOp.Adam/Hidden_Layer_2/bias/v/Read/ReadVariableOp.Adam/Output_Layer/kernel/v/Read/ReadVariableOp,Adam/Output_Layer/bias/v/Read/ReadVariableOpConst*(
Tin!
2	*
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
GPU 2J 8 *(
f#R!
__inference__traced_save_751677
ê
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameHidden_Layer_1/kernelHidden_Layer_1/biasHidden_Layer_2/kernelHidden_Layer_2/biasOutput_Layer/kernelOutput_Layer/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/Hidden_Layer_1/kernel/mAdam/Hidden_Layer_1/bias/mAdam/Hidden_Layer_2/kernel/mAdam/Hidden_Layer_2/bias/mAdam/Output_Layer/kernel/mAdam/Output_Layer/bias/mAdam/Hidden_Layer_1/kernel/vAdam/Hidden_Layer_1/bias/vAdam/Hidden_Layer_2/kernel/vAdam/Hidden_Layer_2/bias/vAdam/Output_Layer/kernel/vAdam/Output_Layer/bias/v*'
Tin 
2*
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_751768»
Î

/__inference_Hidden_Layer_1_layer_call_fn_751495

inputs
unknown:

	unknown_0:

identity¢StatefulPartitionedCallß
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_Hidden_Layer_1_layer_call_and_return_conditional_losses_751141o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ê

-__inference_Output_Layer_layer_call_fn_751562

inputs
unknown:

	unknown_0:
identity¢StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_Output_Layer_layer_call_and_return_conditional_losses_751182o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs


e
F__inference_dropout_21_layer_call_and_return_conditional_losses_751533

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
ç
ú
I__inference_sequential_36_layer_call_and_return_conditional_losses_751368
hidden_layer_1_input'
hidden_layer_1_751351:
#
hidden_layer_1_751353:
'
hidden_layer_2_751357:

#
hidden_layer_2_751359:
%
output_layer_751362:
!
output_layer_751364:
identity¢&Hidden_Layer_1/StatefulPartitionedCall¢&Hidden_Layer_2/StatefulPartitionedCall¢$Output_Layer/StatefulPartitionedCall¢"dropout_21/StatefulPartitionedCall
&Hidden_Layer_1/StatefulPartitionedCallStatefulPartitionedCallhidden_layer_1_inputhidden_layer_1_751351hidden_layer_1_751353*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_Hidden_Layer_1_layer_call_and_return_conditional_losses_751141õ
"dropout_21/StatefulPartitionedCallStatefulPartitionedCall/Hidden_Layer_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_21_layer_call_and_return_conditional_losses_751244­
&Hidden_Layer_2/StatefulPartitionedCallStatefulPartitionedCall+dropout_21/StatefulPartitionedCall:output:0hidden_layer_2_751357hidden_layer_2_751359*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_Hidden_Layer_2_layer_call_and_return_conditional_losses_751165©
$Output_Layer/StatefulPartitionedCallStatefulPartitionedCall/Hidden_Layer_2/StatefulPartitionedCall:output:0output_layer_751362output_layer_751364*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_Output_Layer_layer_call_and_return_conditional_losses_751182|
IdentityIdentity-Output_Layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿä
NoOpNoOp'^Hidden_Layer_1/StatefulPartitionedCall'^Hidden_Layer_2/StatefulPartitionedCall%^Output_Layer/StatefulPartitionedCall#^dropout_21/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 2P
&Hidden_Layer_1/StatefulPartitionedCall&Hidden_Layer_1/StatefulPartitionedCall2P
&Hidden_Layer_2/StatefulPartitionedCall&Hidden_Layer_2/StatefulPartitionedCall2L
$Output_Layer/StatefulPartitionedCall$Output_Layer/StatefulPartitionedCall2H
"dropout_21/StatefulPartitionedCall"dropout_21/StatefulPartitionedCall:] Y
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameHidden_Layer_1_input
	

.__inference_sequential_36_layer_call_fn_751204
hidden_layer_1_input
unknown:

	unknown_0:

	unknown_1:


	unknown_2:

	unknown_3:

	unknown_4:
identity¢StatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallhidden_layer_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_36_layer_call_and_return_conditional_losses_751189o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameHidden_Layer_1_input
¡
G
+__inference_dropout_21_layer_call_fn_751511

inputs
identity±
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_21_layer_call_and_return_conditional_losses_751152`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs


û
J__inference_Hidden_Layer_2_layer_call_and_return_conditional_losses_751165

inputs0
matmul_readvariableop_resource:

-
biasadd_readvariableop_resource:

identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:

*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
P
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs


ù
H__inference_Output_Layer_layer_call_and_return_conditional_losses_751573

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs


e
F__inference_dropout_21_layer_call_and_return_conditional_losses_751244

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
ô

.__inference_sequential_36_layer_call_fn_751427

inputs
unknown:

	unknown_0:

	unknown_1:


	unknown_2:

	unknown_3:

	unknown_4:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_36_layer_call_and_return_conditional_losses_751296o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


ù
H__inference_Output_Layer_layer_call_and_return_conditional_losses_751182

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
Ñ'
Ê
I__inference_sequential_36_layer_call_and_return_conditional_losses_751486

inputs?
-hidden_layer_1_matmul_readvariableop_resource:
<
.hidden_layer_1_biasadd_readvariableop_resource:
?
-hidden_layer_2_matmul_readvariableop_resource:

<
.hidden_layer_2_biasadd_readvariableop_resource:
=
+output_layer_matmul_readvariableop_resource:
:
,output_layer_biasadd_readvariableop_resource:
identity¢%Hidden_Layer_1/BiasAdd/ReadVariableOp¢$Hidden_Layer_1/MatMul/ReadVariableOp¢%Hidden_Layer_2/BiasAdd/ReadVariableOp¢$Hidden_Layer_2/MatMul/ReadVariableOp¢#Output_Layer/BiasAdd/ReadVariableOp¢"Output_Layer/MatMul/ReadVariableOp
$Hidden_Layer_1/MatMul/ReadVariableOpReadVariableOp-hidden_layer_1_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
Hidden_Layer_1/MatMulMatMulinputs,Hidden_Layer_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

%Hidden_Layer_1/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0£
Hidden_Layer_1/BiasAddBiasAddHidden_Layer_1/MatMul:product:0-Hidden_Layer_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
Hidden_Layer_1/ReluReluHidden_Layer_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
]
dropout_21/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_21/dropout/MulMul!Hidden_Layer_1/Relu:activations:0!dropout_21/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
i
dropout_21/dropout/ShapeShape!Hidden_Layer_1/Relu:activations:0*
T0*
_output_shapes
:®
/dropout_21/dropout/random_uniform/RandomUniformRandomUniform!dropout_21/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
dtype0*

seed*f
!dropout_21/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ç
dropout_21/dropout/GreaterEqualGreaterEqual8dropout_21/dropout/random_uniform/RandomUniform:output:0*dropout_21/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

dropout_21/dropout/CastCast#dropout_21/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

dropout_21/dropout/Mul_1Muldropout_21/dropout/Mul:z:0dropout_21/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

$Hidden_Layer_2/MatMul/ReadVariableOpReadVariableOp-hidden_layer_2_matmul_readvariableop_resource*
_output_shapes

:

*
dtype0
Hidden_Layer_2/MatMulMatMuldropout_21/dropout/Mul_1:z:0,Hidden_Layer_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

%Hidden_Layer_2/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0£
Hidden_Layer_2/BiasAddBiasAddHidden_Layer_2/MatMul:product:0-Hidden_Layer_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
Hidden_Layer_2/TanhTanhHidden_Layer_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"Output_Layer/MatMul/ReadVariableOpReadVariableOp+output_layer_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
Output_Layer/MatMulMatMulHidden_Layer_2/Tanh:y:0*Output_Layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#Output_Layer/BiasAdd/ReadVariableOpReadVariableOp,output_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
Output_Layer/BiasAddBiasAddOutput_Layer/MatMul:product:0+Output_Layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
Output_Layer/SigmoidSigmoidOutput_Layer/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
IdentityIdentityOutput_Layer/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¯
NoOpNoOp&^Hidden_Layer_1/BiasAdd/ReadVariableOp%^Hidden_Layer_1/MatMul/ReadVariableOp&^Hidden_Layer_2/BiasAdd/ReadVariableOp%^Hidden_Layer_2/MatMul/ReadVariableOp$^Output_Layer/BiasAdd/ReadVariableOp#^Output_Layer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 2N
%Hidden_Layer_1/BiasAdd/ReadVariableOp%Hidden_Layer_1/BiasAdd/ReadVariableOp2L
$Hidden_Layer_1/MatMul/ReadVariableOp$Hidden_Layer_1/MatMul/ReadVariableOp2N
%Hidden_Layer_2/BiasAdd/ReadVariableOp%Hidden_Layer_2/BiasAdd/ReadVariableOp2L
$Hidden_Layer_2/MatMul/ReadVariableOp$Hidden_Layer_2/MatMul/ReadVariableOp2J
#Output_Layer/BiasAdd/ReadVariableOp#Output_Layer/BiasAdd/ReadVariableOp2H
"Output_Layer/MatMul/ReadVariableOp"Output_Layer/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
=
ê
__inference__traced_save_751677
file_prefix4
0savev2_hidden_layer_1_kernel_read_readvariableop2
.savev2_hidden_layer_1_bias_read_readvariableop4
0savev2_hidden_layer_2_kernel_read_readvariableop2
.savev2_hidden_layer_2_bias_read_readvariableop2
.savev2_output_layer_kernel_read_readvariableop0
,savev2_output_layer_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop;
7savev2_adam_hidden_layer_1_kernel_m_read_readvariableop9
5savev2_adam_hidden_layer_1_bias_m_read_readvariableop;
7savev2_adam_hidden_layer_2_kernel_m_read_readvariableop9
5savev2_adam_hidden_layer_2_bias_m_read_readvariableop9
5savev2_adam_output_layer_kernel_m_read_readvariableop7
3savev2_adam_output_layer_bias_m_read_readvariableop;
7savev2_adam_hidden_layer_1_kernel_v_read_readvariableop9
5savev2_adam_hidden_layer_1_bias_v_read_readvariableop;
7savev2_adam_hidden_layer_2_kernel_v_read_readvariableop9
5savev2_adam_hidden_layer_2_bias_v_read_readvariableop9
5savev2_adam_output_layer_kernel_v_read_readvariableop7
3savev2_adam_output_layer_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: õ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH¥
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ý
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:00savev2_hidden_layer_1_kernel_read_readvariableop.savev2_hidden_layer_1_bias_read_readvariableop0savev2_hidden_layer_2_kernel_read_readvariableop.savev2_hidden_layer_2_bias_read_readvariableop.savev2_output_layer_kernel_read_readvariableop,savev2_output_layer_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop7savev2_adam_hidden_layer_1_kernel_m_read_readvariableop5savev2_adam_hidden_layer_1_bias_m_read_readvariableop7savev2_adam_hidden_layer_2_kernel_m_read_readvariableop5savev2_adam_hidden_layer_2_bias_m_read_readvariableop5savev2_adam_output_layer_kernel_m_read_readvariableop3savev2_adam_output_layer_bias_m_read_readvariableop7savev2_adam_hidden_layer_1_kernel_v_read_readvariableop5savev2_adam_hidden_layer_1_bias_v_read_readvariableop7savev2_adam_hidden_layer_2_kernel_v_read_readvariableop5savev2_adam_hidden_layer_2_bias_v_read_readvariableop5savev2_adam_output_layer_kernel_v_read_readvariableop3savev2_adam_output_layer_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 **
dtypes 
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*»
_input_shapes©
¦: :
:
:

:
:
:: : : : : : : : : :
:
:

:
:
::
:
:

:
:
:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:
: 

_output_shapes
:
:$ 

_output_shapes

:

: 

_output_shapes
:
:$ 

_output_shapes

:
: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:
: 

_output_shapes
:
:$ 

_output_shapes

:

: 

_output_shapes
:
:$ 

_output_shapes

:
: 

_output_shapes
::$ 

_output_shapes

:
: 

_output_shapes
:
:$ 

_output_shapes

:

: 

_output_shapes
:
:$ 

_output_shapes

:
: 

_output_shapes
::

_output_shapes
: 
Ù
d
F__inference_dropout_21_layer_call_and_return_conditional_losses_751152

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
ó
d
+__inference_dropout_21_layer_call_fn_751516

inputs
identity¢StatefulPartitionedCallÁ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_21_layer_call_and_return_conditional_losses_751244o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
Î

/__inference_Hidden_Layer_2_layer_call_fn_751542

inputs
unknown:


	unknown_0:

identity¢StatefulPartitionedCallß
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_Hidden_Layer_2_layer_call_and_return_conditional_losses_751165o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
»
Õ
I__inference_sequential_36_layer_call_and_return_conditional_losses_751348
hidden_layer_1_input'
hidden_layer_1_751331:
#
hidden_layer_1_751333:
'
hidden_layer_2_751337:

#
hidden_layer_2_751339:
%
output_layer_751342:
!
output_layer_751344:
identity¢&Hidden_Layer_1/StatefulPartitionedCall¢&Hidden_Layer_2/StatefulPartitionedCall¢$Output_Layer/StatefulPartitionedCall
&Hidden_Layer_1/StatefulPartitionedCallStatefulPartitionedCallhidden_layer_1_inputhidden_layer_1_751331hidden_layer_1_751333*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_Hidden_Layer_1_layer_call_and_return_conditional_losses_751141å
dropout_21/PartitionedCallPartitionedCall/Hidden_Layer_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_21_layer_call_and_return_conditional_losses_751152¥
&Hidden_Layer_2/StatefulPartitionedCallStatefulPartitionedCall#dropout_21/PartitionedCall:output:0hidden_layer_2_751337hidden_layer_2_751339*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_Hidden_Layer_2_layer_call_and_return_conditional_losses_751165©
$Output_Layer/StatefulPartitionedCallStatefulPartitionedCall/Hidden_Layer_2/StatefulPartitionedCall:output:0output_layer_751342output_layer_751344*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_Output_Layer_layer_call_and_return_conditional_losses_751182|
IdentityIdentity-Output_Layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¿
NoOpNoOp'^Hidden_Layer_1/StatefulPartitionedCall'^Hidden_Layer_2/StatefulPartitionedCall%^Output_Layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 2P
&Hidden_Layer_1/StatefulPartitionedCall&Hidden_Layer_1/StatefulPartitionedCall2P
&Hidden_Layer_2/StatefulPartitionedCall&Hidden_Layer_2/StatefulPartitionedCall2L
$Output_Layer/StatefulPartitionedCall$Output_Layer/StatefulPartitionedCall:] Y
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameHidden_Layer_1_input

Ç
I__inference_sequential_36_layer_call_and_return_conditional_losses_751189

inputs'
hidden_layer_1_751142:
#
hidden_layer_1_751144:
'
hidden_layer_2_751166:

#
hidden_layer_2_751168:
%
output_layer_751183:
!
output_layer_751185:
identity¢&Hidden_Layer_1/StatefulPartitionedCall¢&Hidden_Layer_2/StatefulPartitionedCall¢$Output_Layer/StatefulPartitionedCall
&Hidden_Layer_1/StatefulPartitionedCallStatefulPartitionedCallinputshidden_layer_1_751142hidden_layer_1_751144*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_Hidden_Layer_1_layer_call_and_return_conditional_losses_751141å
dropout_21/PartitionedCallPartitionedCall/Hidden_Layer_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_21_layer_call_and_return_conditional_losses_751152¥
&Hidden_Layer_2/StatefulPartitionedCallStatefulPartitionedCall#dropout_21/PartitionedCall:output:0hidden_layer_2_751166hidden_layer_2_751168*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_Hidden_Layer_2_layer_call_and_return_conditional_losses_751165©
$Output_Layer/StatefulPartitionedCallStatefulPartitionedCall/Hidden_Layer_2/StatefulPartitionedCall:output:0output_layer_751183output_layer_751185*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_Output_Layer_layer_call_and_return_conditional_losses_751182|
IdentityIdentity-Output_Layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¿
NoOpNoOp'^Hidden_Layer_1/StatefulPartitionedCall'^Hidden_Layer_2/StatefulPartitionedCall%^Output_Layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 2P
&Hidden_Layer_1/StatefulPartitionedCall&Hidden_Layer_1/StatefulPartitionedCall2P
&Hidden_Layer_2/StatefulPartitionedCall&Hidden_Layer_2/StatefulPartitionedCall2L
$Output_Layer/StatefulPartitionedCall$Output_Layer/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
½
ì
I__inference_sequential_36_layer_call_and_return_conditional_losses_751296

inputs'
hidden_layer_1_751279:
#
hidden_layer_1_751281:
'
hidden_layer_2_751285:

#
hidden_layer_2_751287:
%
output_layer_751290:
!
output_layer_751292:
identity¢&Hidden_Layer_1/StatefulPartitionedCall¢&Hidden_Layer_2/StatefulPartitionedCall¢$Output_Layer/StatefulPartitionedCall¢"dropout_21/StatefulPartitionedCall
&Hidden_Layer_1/StatefulPartitionedCallStatefulPartitionedCallinputshidden_layer_1_751279hidden_layer_1_751281*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_Hidden_Layer_1_layer_call_and_return_conditional_losses_751141õ
"dropout_21/StatefulPartitionedCallStatefulPartitionedCall/Hidden_Layer_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_21_layer_call_and_return_conditional_losses_751244­
&Hidden_Layer_2/StatefulPartitionedCallStatefulPartitionedCall+dropout_21/StatefulPartitionedCall:output:0hidden_layer_2_751285hidden_layer_2_751287*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_Hidden_Layer_2_layer_call_and_return_conditional_losses_751165©
$Output_Layer/StatefulPartitionedCallStatefulPartitionedCall/Hidden_Layer_2/StatefulPartitionedCall:output:0output_layer_751290output_layer_751292*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_Output_Layer_layer_call_and_return_conditional_losses_751182|
IdentityIdentity-Output_Layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿä
NoOpNoOp'^Hidden_Layer_1/StatefulPartitionedCall'^Hidden_Layer_2/StatefulPartitionedCall%^Output_Layer/StatefulPartitionedCall#^dropout_21/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 2P
&Hidden_Layer_1/StatefulPartitionedCall&Hidden_Layer_1/StatefulPartitionedCall2P
&Hidden_Layer_2/StatefulPartitionedCall&Hidden_Layer_2/StatefulPartitionedCall2L
$Output_Layer/StatefulPartitionedCall$Output_Layer/StatefulPartitionedCall2H
"dropout_21/StatefulPartitionedCall"dropout_21/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ù
d
F__inference_dropout_21_layer_call_and_return_conditional_losses_751521

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
¡

û
J__inference_Hidden_Layer_1_layer_call_and_return_conditional_losses_751141

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:

identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í
Ê
I__inference_sequential_36_layer_call_and_return_conditional_losses_751453

inputs?
-hidden_layer_1_matmul_readvariableop_resource:
<
.hidden_layer_1_biasadd_readvariableop_resource:
?
-hidden_layer_2_matmul_readvariableop_resource:

<
.hidden_layer_2_biasadd_readvariableop_resource:
=
+output_layer_matmul_readvariableop_resource:
:
,output_layer_biasadd_readvariableop_resource:
identity¢%Hidden_Layer_1/BiasAdd/ReadVariableOp¢$Hidden_Layer_1/MatMul/ReadVariableOp¢%Hidden_Layer_2/BiasAdd/ReadVariableOp¢$Hidden_Layer_2/MatMul/ReadVariableOp¢#Output_Layer/BiasAdd/ReadVariableOp¢"Output_Layer/MatMul/ReadVariableOp
$Hidden_Layer_1/MatMul/ReadVariableOpReadVariableOp-hidden_layer_1_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
Hidden_Layer_1/MatMulMatMulinputs,Hidden_Layer_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

%Hidden_Layer_1/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0£
Hidden_Layer_1/BiasAddBiasAddHidden_Layer_1/MatMul:product:0-Hidden_Layer_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
Hidden_Layer_1/ReluReluHidden_Layer_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
t
dropout_21/IdentityIdentity!Hidden_Layer_1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

$Hidden_Layer_2/MatMul/ReadVariableOpReadVariableOp-hidden_layer_2_matmul_readvariableop_resource*
_output_shapes

:

*
dtype0
Hidden_Layer_2/MatMulMatMuldropout_21/Identity:output:0,Hidden_Layer_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

%Hidden_Layer_2/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0£
Hidden_Layer_2/BiasAddBiasAddHidden_Layer_2/MatMul:product:0-Hidden_Layer_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
Hidden_Layer_2/TanhTanhHidden_Layer_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"Output_Layer/MatMul/ReadVariableOpReadVariableOp+output_layer_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
Output_Layer/MatMulMatMulHidden_Layer_2/Tanh:y:0*Output_Layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#Output_Layer/BiasAdd/ReadVariableOpReadVariableOp,output_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
Output_Layer/BiasAddBiasAddOutput_Layer/MatMul:product:0+Output_Layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
Output_Layer/SigmoidSigmoidOutput_Layer/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
IdentityIdentityOutput_Layer/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¯
NoOpNoOp&^Hidden_Layer_1/BiasAdd/ReadVariableOp%^Hidden_Layer_1/MatMul/ReadVariableOp&^Hidden_Layer_2/BiasAdd/ReadVariableOp%^Hidden_Layer_2/MatMul/ReadVariableOp$^Output_Layer/BiasAdd/ReadVariableOp#^Output_Layer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 2N
%Hidden_Layer_1/BiasAdd/ReadVariableOp%Hidden_Layer_1/BiasAdd/ReadVariableOp2L
$Hidden_Layer_1/MatMul/ReadVariableOp$Hidden_Layer_1/MatMul/ReadVariableOp2N
%Hidden_Layer_2/BiasAdd/ReadVariableOp%Hidden_Layer_2/BiasAdd/ReadVariableOp2L
$Hidden_Layer_2/MatMul/ReadVariableOp$Hidden_Layer_2/MatMul/ReadVariableOp2J
#Output_Layer/BiasAdd/ReadVariableOp#Output_Layer/BiasAdd/ReadVariableOp2H
"Output_Layer/MatMul/ReadVariableOp"Output_Layer/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ì

$__inference_signature_wrapper_751393
hidden_layer_1_input
unknown:

	unknown_0:

	unknown_1:


	unknown_2:

	unknown_3:

	unknown_4:
identity¢StatefulPartitionedCallø
StatefulPartitionedCallStatefulPartitionedCallhidden_layer_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_751123o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameHidden_Layer_1_input
«'
Ø
!__inference__wrapped_model_751123
hidden_layer_1_inputM
;sequential_36_hidden_layer_1_matmul_readvariableop_resource:
J
<sequential_36_hidden_layer_1_biasadd_readvariableop_resource:
M
;sequential_36_hidden_layer_2_matmul_readvariableop_resource:

J
<sequential_36_hidden_layer_2_biasadd_readvariableop_resource:
K
9sequential_36_output_layer_matmul_readvariableop_resource:
H
:sequential_36_output_layer_biasadd_readvariableop_resource:
identity¢3sequential_36/Hidden_Layer_1/BiasAdd/ReadVariableOp¢2sequential_36/Hidden_Layer_1/MatMul/ReadVariableOp¢3sequential_36/Hidden_Layer_2/BiasAdd/ReadVariableOp¢2sequential_36/Hidden_Layer_2/MatMul/ReadVariableOp¢1sequential_36/Output_Layer/BiasAdd/ReadVariableOp¢0sequential_36/Output_Layer/MatMul/ReadVariableOp®
2sequential_36/Hidden_Layer_1/MatMul/ReadVariableOpReadVariableOp;sequential_36_hidden_layer_1_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0±
#sequential_36/Hidden_Layer_1/MatMulMatMulhidden_layer_1_input:sequential_36/Hidden_Layer_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¬
3sequential_36/Hidden_Layer_1/BiasAdd/ReadVariableOpReadVariableOp<sequential_36_hidden_layer_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0Í
$sequential_36/Hidden_Layer_1/BiasAddBiasAdd-sequential_36/Hidden_Layer_1/MatMul:product:0;sequential_36/Hidden_Layer_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

!sequential_36/Hidden_Layer_1/ReluRelu-sequential_36/Hidden_Layer_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

!sequential_36/dropout_21/IdentityIdentity/sequential_36/Hidden_Layer_1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
®
2sequential_36/Hidden_Layer_2/MatMul/ReadVariableOpReadVariableOp;sequential_36_hidden_layer_2_matmul_readvariableop_resource*
_output_shapes

:

*
dtype0Ç
#sequential_36/Hidden_Layer_2/MatMulMatMul*sequential_36/dropout_21/Identity:output:0:sequential_36/Hidden_Layer_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¬
3sequential_36/Hidden_Layer_2/BiasAdd/ReadVariableOpReadVariableOp<sequential_36_hidden_layer_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0Í
$sequential_36/Hidden_Layer_2/BiasAddBiasAdd-sequential_36/Hidden_Layer_2/MatMul:product:0;sequential_36/Hidden_Layer_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

!sequential_36/Hidden_Layer_2/TanhTanh-sequential_36/Hidden_Layer_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ª
0sequential_36/Output_Layer/MatMul/ReadVariableOpReadVariableOp9sequential_36_output_layer_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0¾
!sequential_36/Output_Layer/MatMulMatMul%sequential_36/Hidden_Layer_2/Tanh:y:08sequential_36/Output_Layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
1sequential_36/Output_Layer/BiasAdd/ReadVariableOpReadVariableOp:sequential_36_output_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ç
"sequential_36/Output_Layer/BiasAddBiasAdd+sequential_36/Output_Layer/MatMul:product:09sequential_36/Output_Layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"sequential_36/Output_Layer/SigmoidSigmoid+sequential_36/Output_Layer/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
IdentityIdentity&sequential_36/Output_Layer/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp4^sequential_36/Hidden_Layer_1/BiasAdd/ReadVariableOp3^sequential_36/Hidden_Layer_1/MatMul/ReadVariableOp4^sequential_36/Hidden_Layer_2/BiasAdd/ReadVariableOp3^sequential_36/Hidden_Layer_2/MatMul/ReadVariableOp2^sequential_36/Output_Layer/BiasAdd/ReadVariableOp1^sequential_36/Output_Layer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 2j
3sequential_36/Hidden_Layer_1/BiasAdd/ReadVariableOp3sequential_36/Hidden_Layer_1/BiasAdd/ReadVariableOp2h
2sequential_36/Hidden_Layer_1/MatMul/ReadVariableOp2sequential_36/Hidden_Layer_1/MatMul/ReadVariableOp2j
3sequential_36/Hidden_Layer_2/BiasAdd/ReadVariableOp3sequential_36/Hidden_Layer_2/BiasAdd/ReadVariableOp2h
2sequential_36/Hidden_Layer_2/MatMul/ReadVariableOp2sequential_36/Hidden_Layer_2/MatMul/ReadVariableOp2f
1sequential_36/Output_Layer/BiasAdd/ReadVariableOp1sequential_36/Output_Layer/BiasAdd/ReadVariableOp2d
0sequential_36/Output_Layer/MatMul/ReadVariableOp0sequential_36/Output_Layer/MatMul/ReadVariableOp:] Y
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameHidden_Layer_1_input
	

.__inference_sequential_36_layer_call_fn_751328
hidden_layer_1_input
unknown:

	unknown_0:

	unknown_1:


	unknown_2:

	unknown_3:

	unknown_4:
identity¢StatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallhidden_layer_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_36_layer_call_and_return_conditional_losses_751296o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameHidden_Layer_1_input
¡

û
J__inference_Hidden_Layer_1_layer_call_and_return_conditional_losses_751506

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:

identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
n
Ò
"__inference__traced_restore_751768
file_prefix8
&assignvariableop_hidden_layer_1_kernel:
4
&assignvariableop_1_hidden_layer_1_bias:
:
(assignvariableop_2_hidden_layer_2_kernel:

4
&assignvariableop_3_hidden_layer_2_bias:
8
&assignvariableop_4_output_layer_kernel:
2
$assignvariableop_5_output_layer_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: #
assignvariableop_11_total: #
assignvariableop_12_count: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: B
0assignvariableop_15_adam_hidden_layer_1_kernel_m:
<
.assignvariableop_16_adam_hidden_layer_1_bias_m:
B
0assignvariableop_17_adam_hidden_layer_2_kernel_m:

<
.assignvariableop_18_adam_hidden_layer_2_bias_m:
@
.assignvariableop_19_adam_output_layer_kernel_m:
:
,assignvariableop_20_adam_output_layer_bias_m:B
0assignvariableop_21_adam_hidden_layer_1_kernel_v:
<
.assignvariableop_22_adam_hidden_layer_1_bias_v:
B
0assignvariableop_23_adam_hidden_layer_2_kernel_v:

<
.assignvariableop_24_adam_hidden_layer_2_bias_v:
@
.assignvariableop_25_adam_output_layer_kernel_v:
:
,assignvariableop_26_adam_output_layer_bias_v:
identity_28¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9ø
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH¨
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B «
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp&assignvariableop_hidden_layer_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp&assignvariableop_1_hidden_layer_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp(assignvariableop_2_hidden_layer_2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp&assignvariableop_3_hidden_layer_2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp&assignvariableop_4_output_layer_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp$assignvariableop_5_output_layer_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_15AssignVariableOp0assignvariableop_15_adam_hidden_layer_1_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp.assignvariableop_16_adam_hidden_layer_1_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_17AssignVariableOp0assignvariableop_17_adam_hidden_layer_2_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp.assignvariableop_18_adam_hidden_layer_2_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp.assignvariableop_19_adam_output_layer_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp,assignvariableop_20_adam_output_layer_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_21AssignVariableOp0assignvariableop_21_adam_hidden_layer_1_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp.assignvariableop_22_adam_hidden_layer_1_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_23AssignVariableOp0assignvariableop_23_adam_hidden_layer_2_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp.assignvariableop_24_adam_hidden_layer_2_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp.assignvariableop_25_adam_output_layer_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp,assignvariableop_26_adam_output_layer_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ¡
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_28IdentityIdentity_27:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_28Identity_28:output:0*K
_input_shapes:
8: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix


û
J__inference_Hidden_Layer_2_layer_call_and_return_conditional_losses_751553

inputs0
matmul_readvariableop_resource:

-
biasadd_readvariableop_resource:

identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:

*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
P
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
ô

.__inference_sequential_36_layer_call_fn_751410

inputs
unknown:

	unknown_0:

	unknown_1:


	unknown_2:

	unknown_3:

	unknown_4:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_36_layer_call_and_return_conditional_losses_751189o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*É
serving_defaultµ
U
Hidden_Layer_1_input=
&serving_default_Hidden_Layer_1_input:0ÿÿÿÿÿÿÿÿÿ@
Output_Layer0
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:Ú`
è
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
V__call__
*W&call_and_return_all_conditional_losses
X_default_save_signature"
_tf_keras_sequential
»

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
	variables
trainable_variables
regularization_losses
	keras_api
[__call__
*\&call_and_return_all_conditional_losses"
_tf_keras_layer
»

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
]__call__
*^&call_and_return_all_conditional_losses"
_tf_keras_layer
»

kernel
bias
	variables
trainable_variables
regularization_losses
 	keras_api
___call__
*`&call_and_return_all_conditional_losses"
_tf_keras_layer
¿
!iter

"beta_1

#beta_2
	$decay
%learning_ratemJmKmLmMmNmOvPvQvRvSvTvU"
	optimizer
J
0
1
2
3
4
5"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
&non_trainable_variables

'layers
(metrics
)layer_regularization_losses
*layer_metrics
	variables
trainable_variables
regularization_losses
V__call__
X_default_save_signature
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
,
aserving_default"
signature_map
':%
2Hidden_Layer_1/kernel
!:
2Hidden_Layer_1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
+non_trainable_variables

,layers
-metrics
.layer_regularization_losses
/layer_metrics
	variables
trainable_variables
regularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
0non_trainable_variables

1layers
2metrics
3layer_regularization_losses
4layer_metrics
	variables
trainable_variables
regularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
':%

2Hidden_Layer_2/kernel
!:
2Hidden_Layer_2/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
5non_trainable_variables

6layers
7metrics
8layer_regularization_losses
9layer_metrics
	variables
trainable_variables
regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
%:#
2Output_Layer/kernel
:2Output_Layer/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
	variables
trainable_variables
regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	Atotal
	Bcount
C	variables
D	keras_api"
_tf_keras_metric
^
	Etotal
	Fcount
G
_fn_kwargs
H	variables
I	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
A0
B1"
trackable_list_wrapper
-
C	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
E0
F1"
trackable_list_wrapper
-
H	variables"
_generic_user_object
,:*
2Adam/Hidden_Layer_1/kernel/m
&:$
2Adam/Hidden_Layer_1/bias/m
,:*

2Adam/Hidden_Layer_2/kernel/m
&:$
2Adam/Hidden_Layer_2/bias/m
*:(
2Adam/Output_Layer/kernel/m
$:"2Adam/Output_Layer/bias/m
,:*
2Adam/Hidden_Layer_1/kernel/v
&:$
2Adam/Hidden_Layer_1/bias/v
,:*

2Adam/Hidden_Layer_2/kernel/v
&:$
2Adam/Hidden_Layer_2/bias/v
*:(
2Adam/Output_Layer/kernel/v
$:"2Adam/Output_Layer/bias/v
2
.__inference_sequential_36_layer_call_fn_751204
.__inference_sequential_36_layer_call_fn_751410
.__inference_sequential_36_layer_call_fn_751427
.__inference_sequential_36_layer_call_fn_751328À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ò2ï
I__inference_sequential_36_layer_call_and_return_conditional_losses_751453
I__inference_sequential_36_layer_call_and_return_conditional_losses_751486
I__inference_sequential_36_layer_call_and_return_conditional_losses_751348
I__inference_sequential_36_layer_call_and_return_conditional_losses_751368À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÙBÖ
!__inference__wrapped_model_751123Hidden_Layer_1_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ù2Ö
/__inference_Hidden_Layer_1_layer_call_fn_751495¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ô2ñ
J__inference_Hidden_Layer_1_layer_call_and_return_conditional_losses_751506¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
+__inference_dropout_21_layer_call_fn_751511
+__inference_dropout_21_layer_call_fn_751516´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ê2Ç
F__inference_dropout_21_layer_call_and_return_conditional_losses_751521
F__inference_dropout_21_layer_call_and_return_conditional_losses_751533´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ù2Ö
/__inference_Hidden_Layer_2_layer_call_fn_751542¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ô2ñ
J__inference_Hidden_Layer_2_layer_call_and_return_conditional_losses_751553¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
×2Ô
-__inference_Output_Layer_layer_call_fn_751562¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ò2ï
H__inference_Output_Layer_layer_call_and_return_conditional_losses_751573¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ØBÕ
$__inference_signature_wrapper_751393Hidden_Layer_1_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ª
J__inference_Hidden_Layer_1_layer_call_and_return_conditional_losses_751506\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 
/__inference_Hidden_Layer_1_layer_call_fn_751495O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ
ª
J__inference_Hidden_Layer_2_layer_call_and_return_conditional_losses_751553\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ

ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 
/__inference_Hidden_Layer_2_layer_call_fn_751542O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ

ª "ÿÿÿÿÿÿÿÿÿ
¨
H__inference_Output_Layer_layer_call_and_return_conditional_losses_751573\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ

ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_Output_Layer_layer_call_fn_751562O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ

ª "ÿÿÿÿÿÿÿÿÿª
!__inference__wrapped_model_751123=¢:
3¢0
.+
Hidden_Layer_1_inputÿÿÿÿÿÿÿÿÿ
ª ";ª8
6
Output_Layer&#
Output_Layerÿÿÿÿÿÿÿÿÿ¦
F__inference_dropout_21_layer_call_and_return_conditional_losses_751521\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ

p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 ¦
F__inference_dropout_21_layer_call_and_return_conditional_losses_751533\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ

p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 ~
+__inference_dropout_21_layer_call_fn_751511O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ

p 
ª "ÿÿÿÿÿÿÿÿÿ
~
+__inference_dropout_21_layer_call_fn_751516O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ

p
ª "ÿÿÿÿÿÿÿÿÿ
Ã
I__inference_sequential_36_layer_call_and_return_conditional_losses_751348vE¢B
;¢8
.+
Hidden_Layer_1_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ã
I__inference_sequential_36_layer_call_and_return_conditional_losses_751368vE¢B
;¢8
.+
Hidden_Layer_1_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 µ
I__inference_sequential_36_layer_call_and_return_conditional_losses_751453h7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 µ
I__inference_sequential_36_layer_call_and_return_conditional_losses_751486h7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
.__inference_sequential_36_layer_call_fn_751204iE¢B
;¢8
.+
Hidden_Layer_1_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
.__inference_sequential_36_layer_call_fn_751328iE¢B
;¢8
.+
Hidden_Layer_1_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
.__inference_sequential_36_layer_call_fn_751410[7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
.__inference_sequential_36_layer_call_fn_751427[7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿÅ
$__inference_signature_wrapper_751393U¢R
¢ 
KªH
F
Hidden_Layer_1_input.+
Hidden_Layer_1_inputÿÿÿÿÿÿÿÿÿ";ª8
6
Output_Layer&#
Output_Layerÿÿÿÿÿÿÿÿÿ