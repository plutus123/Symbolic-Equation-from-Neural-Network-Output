��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
dtypetype�
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.14.02v2.14.0-rc1-21-g4dacf3f368e8��
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_2/kernel/v

)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes

:*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

:*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

:*
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_2/kernel/m

)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes

:*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

:*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

:*
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
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:*
dtype0
�
(prune_low_magnitude_dense_2/pruning_stepVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *9
shared_name*(prune_low_magnitude_dense_2/pruning_step
�
<prune_low_magnitude_dense_2/pruning_step/Read/ReadVariableOpReadVariableOp(prune_low_magnitude_dense_2/pruning_step*
_output_shapes
: *
dtype0	
�
%prune_low_magnitude_dense_2/thresholdVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%prune_low_magnitude_dense_2/threshold
�
9prune_low_magnitude_dense_2/threshold/Read/ReadVariableOpReadVariableOp%prune_low_magnitude_dense_2/threshold*
_output_shapes
: *
dtype0
�
 prune_low_magnitude_dense_2/maskVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*1
shared_name" prune_low_magnitude_dense_2/mask
�
4prune_low_magnitude_dense_2/mask/Read/ReadVariableOpReadVariableOp prune_low_magnitude_dense_2/mask*
_output_shapes

:*
dtype0
�
(prune_low_magnitude_dense_1/pruning_stepVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *9
shared_name*(prune_low_magnitude_dense_1/pruning_step
�
<prune_low_magnitude_dense_1/pruning_step/Read/ReadVariableOpReadVariableOp(prune_low_magnitude_dense_1/pruning_step*
_output_shapes
: *
dtype0	
�
%prune_low_magnitude_dense_1/thresholdVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%prune_low_magnitude_dense_1/threshold
�
9prune_low_magnitude_dense_1/threshold/Read/ReadVariableOpReadVariableOp%prune_low_magnitude_dense_1/threshold*
_output_shapes
: *
dtype0
�
 prune_low_magnitude_dense_1/maskVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*1
shared_name" prune_low_magnitude_dense_1/mask
�
4prune_low_magnitude_dense_1/mask/Read/ReadVariableOpReadVariableOp prune_low_magnitude_dense_1/mask*
_output_shapes

:*
dtype0
�
&prune_low_magnitude_dense/pruning_stepVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *7
shared_name(&prune_low_magnitude_dense/pruning_step
�
:prune_low_magnitude_dense/pruning_step/Read/ReadVariableOpReadVariableOp&prune_low_magnitude_dense/pruning_step*
_output_shapes
: *
dtype0	
�
#prune_low_magnitude_dense/thresholdVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#prune_low_magnitude_dense/threshold
�
7prune_low_magnitude_dense/threshold/Read/ReadVariableOpReadVariableOp#prune_low_magnitude_dense/threshold*
_output_shapes
: *
dtype0
�
prune_low_magnitude_dense/maskVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*/
shared_name prune_low_magnitude_dense/mask
�
2prune_low_magnitude_dense/mask/Read/ReadVariableOpReadVariableOpprune_low_magnitude_dense/mask*
_output_shapes

:*
dtype0
~
serving_default_dense_inputPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_inputdense/kernelprune_low_magnitude_dense/mask
dense/biasdense_1/kernel prune_low_magnitude_dense_1/maskdense_1/biasdense_2/kernel prune_low_magnitude_dense_2/maskdense_2/bias*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_23042

NoOpNoOp
�F
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�F
value�FB�F B�F
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
pruning_vars
	layer
prunable_weights
mask
	threshold
pruning_step*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
pruning_vars
	 layer
!prunable_weights
"mask
#	threshold
$pruning_step*
�
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses
+pruning_vars
	,layer
-prunable_weights
.mask
/	threshold
0pruning_step*
r
10
21
2
3
4
35
46
"7
#8
$9
510
611
.12
/13
014*
.
10
21
32
43
54
65*
* 
�
7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*

<trace_0
=trace_1* 

>trace_0
?trace_1* 
* 
�
@iter

Abeta_1

Bbeta_2
	Cdecay
Dlearning_rate1m�2m�3m�4m�5m�6m�1v�2v�3v�4v�5v�6v�*

Eserving_default* 
'
10
21
2
3
4*

10
21*
* 
�
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Ktrace_0
Ltrace_1* 

Mtrace_0
Ntrace_1* 

O0*
�
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses

1kernel
2bias*

10*
lf
VARIABLE_VALUEprune_low_magnitude_dense/mask4layer_with_weights-0/mask/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE#prune_low_magnitude_dense/threshold9layer_with_weights-0/threshold/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE&prune_low_magnitude_dense/pruning_step<layer_with_weights-0/pruning_step/.ATTRIBUTES/VARIABLE_VALUE*
'
30
41
"2
#3
$4*

30
41*
* 
�
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

[trace_0
\trace_1* 

]trace_0
^trace_1* 

_0*
�
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses

3kernel
4bias*

30*
nh
VARIABLE_VALUE prune_low_magnitude_dense_1/mask4layer_with_weights-1/mask/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE%prune_low_magnitude_dense_1/threshold9layer_with_weights-1/threshold/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE(prune_low_magnitude_dense_1/pruning_step<layer_with_weights-1/pruning_step/.ATTRIBUTES/VARIABLE_VALUE*
'
50
61
.2
/3
04*

50
61*
* 
�
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses*

ktrace_0
ltrace_1* 

mtrace_0
ntrace_1* 

o0*
�
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses

5kernel
6bias*

50*
nh
VARIABLE_VALUE prune_low_magnitude_dense_2/mask4layer_with_weights-2/mask/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE%prune_low_magnitude_dense_2/threshold9layer_with_weights-2/threshold/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE(prune_low_magnitude_dense_2/pruning_step<layer_with_weights-2/pruning_step/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEdense/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
dense/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_1/kernel&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEdense_1/bias&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_2/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense_2/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
C
0
1
2
"3
#4
$5
.6
/7
08*

0
1
2*

v0
w1*
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*

0*
* 
* 
* 
* 
* 
* 
* 

10
1
2*

10
21*

10
21*
* 
�
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses*
* 
* 

"0
#1
$2*

 0*
* 
* 
* 
* 
* 
* 
* 

30
"1
#2*

30
41*

30
41*
* 
�
}non_trainable_variables

~layers
metrics
 �layer_regularization_losses
�layer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses*
* 
* 

.0
/1
02*

,0*
* 
* 
* 
* 
* 
* 
* 

50
.1
/2*

50
61*

50
61*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses*
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
oi
VARIABLE_VALUEAdam/dense/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUEAdam/dense/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_1/kernel/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/dense_1/bias/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_2/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_2/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/dense/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUEAdam/dense/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_1/kernel/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/dense_1/bias/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_2/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_2/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameprune_low_magnitude_dense/mask#prune_low_magnitude_dense/threshold&prune_low_magnitude_dense/pruning_step prune_low_magnitude_dense_1/mask%prune_low_magnitude_dense_1/threshold(prune_low_magnitude_dense_1/pruning_step prune_low_magnitude_dense_2/mask%prune_low_magnitude_dense_2/threshold(prune_low_magnitude_dense_2/pruning_stepdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/vAdam/dense_2/kernel/vAdam/dense_2/bias/vConst*1
Tin*
(2&*
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
GPU 2J 8� *'
f"R 
__inference__traced_save_23940
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameprune_low_magnitude_dense/mask#prune_low_magnitude_dense/threshold&prune_low_magnitude_dense/pruning_step prune_low_magnitude_dense_1/mask%prune_low_magnitude_dense_1/threshold(prune_low_magnitude_dense_1/pruning_step prune_low_magnitude_dense_2/mask%prune_low_magnitude_dense_2/threshold(prune_low_magnitude_dense_2/pruning_stepdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/vAdam/dense_2/kernel/vAdam/dense_2/bias/v*0
Tin)
'2%*
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
GPU 2J 8� **
f%R#
!__inference__traced_restore_24057��
�
�
V__inference_prune_low_magnitude_dense_2_layer_call_and_return_conditional_losses_22867

inputs-
mul_readvariableop_resource:/
mul_readvariableop_1_resource:-
biasadd_readvariableop_resource:
identity��AssignVariableOp�BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�Mul/ReadVariableOp�Mul/ReadVariableOp_1'
	no_updateNoOp*
_output_shapes
 )
no_update_1NoOp*
_output_shapes
 n
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes

:*
dtype0r
Mul/ReadVariableOp_1ReadVariableOpmul_readvariableop_1_resource*
_output_shapes

:*
dtype0m
MulMulMul/ReadVariableOp:value:0Mul/ReadVariableOp_1:value:0*
T0*
_output_shapes

:�
AssignVariableOpAssignVariableOpmul_readvariableop_resourceMul:z:0^Mul/ReadVariableOp*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(�

group_depsNoOp^AssignVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 e
group_deps_1NoOp^group_deps",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 �
MatMul/ReadVariableOpReadVariableOpmul_readvariableop_resource^AssignVariableOp*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^AssignVariableOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^Mul/ReadVariableOp^Mul/ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:���������: : : 2$
AssignVariableOpAssignVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2,
Mul/ReadVariableOp_1Mul/ReadVariableOp_12(
Mul/ReadVariableOpMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�`
�
V__inference_prune_low_magnitude_dense_2_layer_call_and_return_conditional_losses_23687

inputs!
readvariableop_resource:	 
cond_input_1:
cond_input_2:
cond_input_3: -
biasadd_readvariableop_resource:
identity��AssignVariableOp�AssignVariableOp_1�BiasAdd/ReadVariableOp�GreaterEqual/ReadVariableOp�LessEqual/ReadVariableOp�MatMul/ReadVariableOp�Mul/ReadVariableOp�Mul/ReadVariableOp_1�ReadVariableOp�Sub/ReadVariableOp�'assert_greater_equal/Assert/AssertGuard�#assert_greater_equal/ReadVariableOp�cond�0polynomial_decay_pruning_schedule/ReadVariableOp^
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0	G
add/yConst*
_output_shapes
: *
dtype0	*
value	B	 RU
addAddV2ReadVariableOp:value:0add/y:output:0*
T0	*
_output_shapes
: �
AssignVariableOpAssignVariableOpreadvariableop_resourceadd:z:0^ReadVariableOp*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	*
validate_shape(7
updateNoOp^AssignVariableOp*
_output_shapes
 �
#assert_greater_equal/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp*
_output_shapes
: *
dtype0	X
assert_greater_equal/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
!assert_greater_equal/GreaterEqualGreaterEqual+assert_greater_equal/ReadVariableOp:value:0assert_greater_equal/y:output:0*
T0	*
_output_shapes
: [
assert_greater_equal/RankConst*
_output_shapes
: *
dtype0*
value	B : b
 assert_greater_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : b
 assert_greater_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
assert_greater_equal/rangeRange)assert_greater_equal/range/start:output:0"assert_greater_equal/Rank:output:0)assert_greater_equal/range/delta:output:0*
_output_shapes
: �
assert_greater_equal/AllAll%assert_greater_equal/GreaterEqual:z:0#assert_greater_equal/range:output:0*
_output_shapes
: �
!assert_greater_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*�
value�B� B�Prune() wrapper requires the UpdatePruningStep callback to be provided during training. Please add it as a callback to your model.fit call.�
#assert_greater_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:�
#assert_greater_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*=
value4B2 B,x (assert_greater_equal/ReadVariableOp:0) = �
#assert_greater_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*0
value'B% By (assert_greater_equal/y:0) = �
'assert_greater_equal/Assert/AssertGuardIf!assert_greater_equal/All:output:0!assert_greater_equal/All:output:0+assert_greater_equal/ReadVariableOp:value:0assert_greater_equal/y:output:0*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *F
else_branch7R5
3assert_greater_equal_Assert_AssertGuard_false_23528*
output_shapes
: *E
then_branch6R4
2assert_greater_equal_Assert_AssertGuard_true_23527�
0assert_greater_equal/Assert/AssertGuard/IdentityIdentity0assert_greater_equal/Assert/AssertGuard:output:0*
T0
*&
 _has_manual_control_dependencies(*
_output_shapes
: �
0polynomial_decay_pruning_schedule/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	�
'polynomial_decay_pruning_schedule/sub/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R �
%polynomial_decay_pruning_schedule/subSub8polynomial_decay_pruning_schedule/ReadVariableOp:value:00polynomial_decay_pruning_schedule/sub/y:output:0*
T0	*
_output_shapes
: �
&polynomial_decay_pruning_schedule/CastCast)polynomial_decay_pruning_schedule/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: �
+polynomial_decay_pruning_schedule/truediv/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  HB�
)polynomial_decay_pruning_schedule/truedivRealDiv*polynomial_decay_pruning_schedule/Cast:y:04polynomial_decay_pruning_schedule/truediv/y:output:0*
T0*
_output_shapes
: �
+polynomial_decay_pruning_schedule/Maximum/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *    �
)polynomial_decay_pruning_schedule/MaximumMaximum4polynomial_decay_pruning_schedule/Maximum/x:output:0-polynomial_decay_pruning_schedule/truediv:z:0*
T0*
_output_shapes
: �
+polynomial_decay_pruning_schedule/Minimum/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  �?�
)polynomial_decay_pruning_schedule/MinimumMinimum4polynomial_decay_pruning_schedule/Minimum/x:output:0-polynomial_decay_pruning_schedule/Maximum:z:0*
T0*
_output_shapes
: �
)polynomial_decay_pruning_schedule/sub_1/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  �?�
'polynomial_decay_pruning_schedule/sub_1Sub2polynomial_decay_pruning_schedule/sub_1/x:output:0-polynomial_decay_pruning_schedule/Minimum:z:0*
T0*
_output_shapes
: �
'polynomial_decay_pruning_schedule/Pow/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  @@�
%polynomial_decay_pruning_schedule/PowPow+polynomial_decay_pruning_schedule/sub_1:z:00polynomial_decay_pruning_schedule/Pow/y:output:0*
T0*
_output_shapes
: �
'polynomial_decay_pruning_schedule/Mul/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *��̾�
%polynomial_decay_pruning_schedule/MulMul0polynomial_decay_pruning_schedule/Mul/x:output:0)polynomial_decay_pruning_schedule/Pow:z:0*
T0*
_output_shapes
: �
,polynomial_decay_pruning_schedule/sparsity/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *fff?�
*polynomial_decay_pruning_schedule/sparsityAddV2)polynomial_decay_pruning_schedule/Mul:z:05polynomial_decay_pruning_schedule/sparsity/y:output:0*
T0*
_output_shapes
: �
GreaterEqual/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	�
GreaterEqual/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R {
GreaterEqualGreaterEqual#GreaterEqual/ReadVariableOp:value:0GreaterEqual/y:output:0*
T0	*
_output_shapes
: �
LessEqual/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	�
LessEqual/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R2o
	LessEqual	LessEqual LessEqual/ReadVariableOp:value:0LessEqual/y:output:0*
T0	*
_output_shapes
: {
Less/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
value	B :2{
Less/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
value	B : O
LessLessLess/x:output:0Less/y:output:0*
T0*
_output_shapes
: G
	LogicalOr	LogicalOrLessEqual:z:0Less:z:0*
_output_shapes
: Q

LogicalAnd
LogicalAndGreaterEqual:z:0LogicalOr:z:0*
_output_shapes
: �
Sub/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	z
Sub/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R W
SubSubSub/ReadVariableOp:value:0Sub/y:output:0*
T0	*
_output_shapes
: 

FloorMod/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 RdS
FloorModFloorModSub:z:0FloorMod/y:output:0*
T0	*
_output_shapes
: |
Equal/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R O
EqualEqualFloorMod:z:0Equal/y:output:0*
T0	*
_output_shapes
: M
LogicalAnd_1
LogicalAndLogicalAnd:z:0	Equal:z:0*
_output_shapes
: �
condIfLogicalAnd_1:z:0readvariableop_resourcecond_input_1cond_input_2cond_input_3LogicalAnd_1:z:0^AssignVariableOp*
Tcond0
*
Tin	
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: *$
_read_only_resource_inputs
*#
else_branchR
cond_false_23585*
output_shapes
: *"
then_branchR
cond_true_23584q
cond/IdentityIdentitycond:output:0*
T0
*&
 _has_manual_control_dependencies(*
_output_shapes
: i
update_1NoOp1^assert_greater_equal/Assert/AssertGuard/Identity^cond/Identity*
_output_shapes
 _
Mul/ReadVariableOpReadVariableOpcond_input_1*
_output_shapes

:*
dtype0h
Mul/ReadVariableOp_1ReadVariableOpcond_input_2^cond*
_output_shapes

:*
dtype0m
MulMulMul/ReadVariableOp:value:0Mul/ReadVariableOp_1:value:0*
T0*
_output_shapes

:�
AssignVariableOp_1AssignVariableOpcond_input_1Mul:z:0^Mul/ReadVariableOp^cond*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(�

group_depsNoOp^AssignVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 e
group_deps_1NoOp^group_deps",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 w
MatMul/ReadVariableOpReadVariableOpcond_input_1^AssignVariableOp_1*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^BiasAdd/ReadVariableOp^GreaterEqual/ReadVariableOp^LessEqual/ReadVariableOp^MatMul/ReadVariableOp^Mul/ReadVariableOp^Mul/ReadVariableOp_1^ReadVariableOp^Sub/ReadVariableOp(^assert_greater_equal/Assert/AssertGuard$^assert_greater_equal/ReadVariableOp^cond1^polynomial_decay_pruning_schedule/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : : : 2(
AssignVariableOp_1AssignVariableOp_12$
AssignVariableOpAssignVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2:
GreaterEqual/ReadVariableOpGreaterEqual/ReadVariableOp24
LessEqual/ReadVariableOpLessEqual/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2,
Mul/ReadVariableOp_1Mul/ReadVariableOp_12(
Mul/ReadVariableOpMul/ReadVariableOp2 
ReadVariableOpReadVariableOp2(
Sub/ReadVariableOpSub/ReadVariableOp2R
'assert_greater_equal/Assert/AssertGuard'assert_greater_equal/Assert/AssertGuard2J
#assert_greater_equal/ReadVariableOp#assert_greater_equal/ReadVariableOp2
condcond2d
0polynomial_decay_pruning_schedule/ReadVariableOp0polynomial_decay_pruning_schedule/ReadVariableOp:($
"
_user_specified_name
resource:'#
!
_user_specified_name	input_3:'#
!
_user_specified_name	input_2:'#
!
_user_specified_name	input_1:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
2assert_greater_equal_Assert_AssertGuard_true_23307M
Iassert_greater_equal_assert_assertguard_identity_assert_greater_equal_all
7
3assert_greater_equal_assert_assertguard_placeholder	9
5assert_greater_equal_assert_assertguard_placeholder_1	6
2assert_greater_equal_assert_assertguard_identity_1
r
,assert_greater_equal/Assert/AssertGuard/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
0assert_greater_equal/Assert/AssertGuard/IdentityIdentityIassert_greater_equal_assert_assertguard_identity_assert_greater_equal_all-^assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
2assert_greater_equal/Assert/AssertGuard/Identity_1Identity9assert_greater_equal/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "q
2assert_greater_equal_assert_assertguard_identity_1;assert_greater_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : :

_output_shapes
: :

_output_shapes
: :P L

_output_shapes
: 
2
_user_specified_nameassert_greater_equal/All
�X
�
cond_true_23364H
>cond_polynomial_decay_pruning_schedule_readvariableop_resource:	 >
,cond_pruning_ops_abs_readvariableop_resource:0
cond_assignvariableop_resource:*
 cond_assignvariableop_1_resource: 
cond_identity_logicaland_1

cond_identity_1
��cond/AssignVariableOp�cond/AssignVariableOp_1� cond/GreaterEqual/ReadVariableOp�cond/LessEqual/ReadVariableOp�cond/Sub/ReadVariableOp�5cond/polynomial_decay_pruning_schedule/ReadVariableOp�#cond/pruning_ops/Abs/ReadVariableOp�
5cond/polynomial_decay_pruning_schedule/ReadVariableOpReadVariableOp>cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	n
,cond/polynomial_decay_pruning_schedule/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
*cond/polynomial_decay_pruning_schedule/subSub=cond/polynomial_decay_pruning_schedule/ReadVariableOp:value:05cond/polynomial_decay_pruning_schedule/sub/y:output:0*
T0	*
_output_shapes
: �
+cond/polynomial_decay_pruning_schedule/CastCast.cond/polynomial_decay_pruning_schedule/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: u
0cond/polynomial_decay_pruning_schedule/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  HB�
.cond/polynomial_decay_pruning_schedule/truedivRealDiv/cond/polynomial_decay_pruning_schedule/Cast:y:09cond/polynomial_decay_pruning_schedule/truediv/y:output:0*
T0*
_output_shapes
: u
0cond/polynomial_decay_pruning_schedule/Maximum/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
.cond/polynomial_decay_pruning_schedule/MaximumMaximum9cond/polynomial_decay_pruning_schedule/Maximum/x:output:02cond/polynomial_decay_pruning_schedule/truediv:z:0*
T0*
_output_shapes
: u
0cond/polynomial_decay_pruning_schedule/Minimum/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
.cond/polynomial_decay_pruning_schedule/MinimumMinimum9cond/polynomial_decay_pruning_schedule/Minimum/x:output:02cond/polynomial_decay_pruning_schedule/Maximum:z:0*
T0*
_output_shapes
: s
.cond/polynomial_decay_pruning_schedule/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
,cond/polynomial_decay_pruning_schedule/sub_1Sub7cond/polynomial_decay_pruning_schedule/sub_1/x:output:02cond/polynomial_decay_pruning_schedule/Minimum:z:0*
T0*
_output_shapes
: q
,cond/polynomial_decay_pruning_schedule/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@�
*cond/polynomial_decay_pruning_schedule/PowPow0cond/polynomial_decay_pruning_schedule/sub_1:z:05cond/polynomial_decay_pruning_schedule/Pow/y:output:0*
T0*
_output_shapes
: q
,cond/polynomial_decay_pruning_schedule/Mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��̾�
*cond/polynomial_decay_pruning_schedule/MulMul5cond/polynomial_decay_pruning_schedule/Mul/x:output:0.cond/polynomial_decay_pruning_schedule/Pow:z:0*
T0*
_output_shapes
: v
1cond/polynomial_decay_pruning_schedule/sparsity/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?�
/cond/polynomial_decay_pruning_schedule/sparsityAddV2.cond/polynomial_decay_pruning_schedule/Mul:z:0:cond/polynomial_decay_pruning_schedule/sparsity/y:output:0*
T0*
_output_shapes
: �
 cond/GreaterEqual/ReadVariableOpReadVariableOp>cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	U
cond/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
cond/GreaterEqualGreaterEqual(cond/GreaterEqual/ReadVariableOp:value:0cond/GreaterEqual/y:output:0*
T0	*
_output_shapes
: �
cond/LessEqual/ReadVariableOpReadVariableOp>cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	R
cond/LessEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R2~
cond/LessEqual	LessEqual%cond/LessEqual/ReadVariableOp:value:0cond/LessEqual/y:output:0*
T0	*
_output_shapes
: M
cond/Less/xConst*
_output_shapes
: *
dtype0*
value	B :2M
cond/Less/yConst*
_output_shapes
: *
dtype0*
value	B : ^
	cond/LessLesscond/Less/x:output:0cond/Less/y:output:0*
T0*
_output_shapes
: V
cond/LogicalOr	LogicalOrcond/LessEqual:z:0cond/Less:z:0*
_output_shapes
: `
cond/LogicalAnd
LogicalAndcond/GreaterEqual:z:0cond/LogicalOr:z:0*
_output_shapes
: �
cond/Sub/ReadVariableOpReadVariableOp>cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	L

cond/Sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R f
cond/SubSubcond/Sub/ReadVariableOp:value:0cond/Sub/y:output:0*
T0	*
_output_shapes
: Q
cond/FloorMod/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rdb
cond/FloorModFloorModcond/Sub:z:0cond/FloorMod/y:output:0*
T0	*
_output_shapes
: N
cond/Equal/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ^

cond/EqualEqualcond/FloorMod:z:0cond/Equal/y:output:0*
T0	*
_output_shapes
: \
cond/LogicalAnd_1
LogicalAndcond/LogicalAnd:z:0cond/Equal:z:0*
_output_shapes
: �
#cond/pruning_ops/Abs/ReadVariableOpReadVariableOp,cond_pruning_ops_abs_readvariableop_resource*
_output_shapes

:*
dtype0q
cond/pruning_ops/AbsAbs+cond/pruning_ops/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:W
cond/pruning_ops/SizeConst*
_output_shapes
: *
dtype0*
value	B :@m
cond/pruning_ops/CastCastcond/pruning_ops/Size:output:0*

DstT0*

SrcT0*
_output_shapes
: [
cond/pruning_ops/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
cond/pruning_ops/subSubcond/pruning_ops/sub/x:output:03cond/polynomial_decay_pruning_schedule/sparsity:z:0*
T0*
_output_shapes
: q
cond/pruning_ops/mulMulcond/pruning_ops/Cast:y:0cond/pruning_ops/sub:z:0*
T0*
_output_shapes
: Z
cond/pruning_ops/RoundRoundcond/pruning_ops/mul:z:0*
T0*
_output_shapes
: _
cond/pruning_ops/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
cond/pruning_ops/MaximumMaximumcond/pruning_ops/Round:y:0#cond/pruning_ops/Maximum/y:output:0*
T0*
_output_shapes
: m
cond/pruning_ops/Cast_1Castcond/pruning_ops/Maximum:z:0*

DstT0*

SrcT0*
_output_shapes
: q
cond/pruning_ops/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
cond/pruning_ops/ReshapeReshapecond/pruning_ops/Abs:y:0'cond/pruning_ops/Reshape/shape:output:0*
T0*
_output_shapes
:@Y
cond/pruning_ops/Size_1Const*
_output_shapes
: *
dtype0*
value	B :@�
cond/pruning_ops/TopKV2TopKV2!cond/pruning_ops/Reshape:output:0 cond/pruning_ops/Size_1:output:0*
T0* 
_output_shapes
:@:@Z
cond/pruning_ops/sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :~
cond/pruning_ops/sub_1Subcond/pruning_ops/Cast_1:y:0!cond/pruning_ops/sub_1/y:output:0*
T0*
_output_shapes
: `
cond/pruning_ops/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
cond/pruning_ops/GatherV2GatherV2 cond/pruning_ops/TopKV2:values:0cond/pruning_ops/sub_1:z:0'cond/pruning_ops/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: Z
cond/pruning_ops/sub_2/yConst*
_output_shapes
: *
dtype0*
value	B :~
cond/pruning_ops/sub_2Subcond/pruning_ops/Cast_1:y:0!cond/pruning_ops/sub_2/y:output:0*
T0*
_output_shapes
: b
 cond/pruning_ops/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
cond/pruning_ops/GatherV2_1GatherV2!cond/pruning_ops/TopKV2:indices:0cond/pruning_ops/sub_2:z:0)cond/pruning_ops/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: �
cond/pruning_ops/GreaterEqualGreaterEqualcond/pruning_ops/Abs:y:0"cond/pruning_ops/GatherV2:output:0*
T0*
_output_shapes

:Y
cond/pruning_ops/Size_2Const*
_output_shapes
: *
dtype0*
value	B :@`
cond/pruning_ops/one_hot/ConstConst*
_output_shapes
: *
dtype0
*
value	B
 Zb
 cond/pruning_ops/one_hot/Const_1Const*
_output_shapes
: *
dtype0
*
value	B
 Z �
cond/pruning_ops/one_hotOneHot$cond/pruning_ops/GatherV2_1:output:0 cond/pruning_ops/Size_2:output:0'cond/pruning_ops/one_hot/Const:output:0)cond/pruning_ops/one_hot/Const_1:output:0*
TI0*
T0
*
_output_shapes
:@q
 cond/pruning_ops/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
cond/pruning_ops/Reshape_1Reshape!cond/pruning_ops/one_hot:output:0)cond/pruning_ops/Reshape_1/shape:output:0*
T0
*
_output_shapes

:�
cond/pruning_ops/LogicalOr	LogicalOr!cond/pruning_ops/GreaterEqual:z:0#cond/pruning_ops/Reshape_1:output:0*
_output_shapes

:i
	cond/CastCastcond/pruning_ops/LogicalOr:z:0*

DstT0*

SrcT0
*
_output_shapes

:�
cond/AssignVariableOpAssignVariableOpcond_assignvariableop_resourcecond/Cast:y:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(�
cond/AssignVariableOp_1AssignVariableOp cond_assignvariableop_1_resource"cond/pruning_ops/GatherV2:output:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(�
cond/group_depsNoOp^cond/AssignVariableOp^cond/AssignVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 h
cond/IdentityIdentitycond_identity_logicaland_1^cond/group_deps*
T0
*
_output_shapes
: `
cond/Identity_1Identitycond/Identity:output:0
^cond/NoOp*
T0
*
_output_shapes
: �
	cond/NoOpNoOp^cond/AssignVariableOp^cond/AssignVariableOp_1!^cond/GreaterEqual/ReadVariableOp^cond/LessEqual/ReadVariableOp^cond/Sub/ReadVariableOp6^cond/polynomial_decay_pruning_schedule/ReadVariableOp$^cond/pruning_ops/Abs/ReadVariableOp*
_output_shapes
 "+
cond_identity_1cond/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : 22
cond/AssignVariableOp_1cond/AssignVariableOp_12.
cond/AssignVariableOpcond/AssignVariableOp2D
 cond/GreaterEqual/ReadVariableOp cond/GreaterEqual/ReadVariableOp2>
cond/LessEqual/ReadVariableOpcond/LessEqual/ReadVariableOp22
cond/Sub/ReadVariableOpcond/Sub/ReadVariableOp2n
5cond/polynomial_decay_pruning_schedule/ReadVariableOp5cond/polynomial_decay_pruning_schedule/ReadVariableOp2J
#cond/pruning_ops/Abs/ReadVariableOp#cond/pruning_ops/Abs/ReadVariableOp:D@

_output_shapes
: 
&
_user_specified_nameLogicalAnd_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:( $
"
_user_specified_name
resource
�`
�
V__inference_prune_low_magnitude_dense_1_layer_call_and_return_conditional_losses_23467

inputs!
readvariableop_resource:	 
cond_input_1:
cond_input_2:
cond_input_3: -
biasadd_readvariableop_resource:
identity��AssignVariableOp�AssignVariableOp_1�BiasAdd/ReadVariableOp�GreaterEqual/ReadVariableOp�LessEqual/ReadVariableOp�MatMul/ReadVariableOp�Mul/ReadVariableOp�Mul/ReadVariableOp_1�ReadVariableOp�Sub/ReadVariableOp�'assert_greater_equal/Assert/AssertGuard�#assert_greater_equal/ReadVariableOp�cond�0polynomial_decay_pruning_schedule/ReadVariableOp^
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0	G
add/yConst*
_output_shapes
: *
dtype0	*
value	B	 RU
addAddV2ReadVariableOp:value:0add/y:output:0*
T0	*
_output_shapes
: �
AssignVariableOpAssignVariableOpreadvariableop_resourceadd:z:0^ReadVariableOp*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	*
validate_shape(7
updateNoOp^AssignVariableOp*
_output_shapes
 �
#assert_greater_equal/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp*
_output_shapes
: *
dtype0	X
assert_greater_equal/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
!assert_greater_equal/GreaterEqualGreaterEqual+assert_greater_equal/ReadVariableOp:value:0assert_greater_equal/y:output:0*
T0	*
_output_shapes
: [
assert_greater_equal/RankConst*
_output_shapes
: *
dtype0*
value	B : b
 assert_greater_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : b
 assert_greater_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
assert_greater_equal/rangeRange)assert_greater_equal/range/start:output:0"assert_greater_equal/Rank:output:0)assert_greater_equal/range/delta:output:0*
_output_shapes
: �
assert_greater_equal/AllAll%assert_greater_equal/GreaterEqual:z:0#assert_greater_equal/range:output:0*
_output_shapes
: �
!assert_greater_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*�
value�B� B�Prune() wrapper requires the UpdatePruningStep callback to be provided during training. Please add it as a callback to your model.fit call.�
#assert_greater_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:�
#assert_greater_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*=
value4B2 B,x (assert_greater_equal/ReadVariableOp:0) = �
#assert_greater_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*0
value'B% By (assert_greater_equal/y:0) = �
'assert_greater_equal/Assert/AssertGuardIf!assert_greater_equal/All:output:0!assert_greater_equal/All:output:0+assert_greater_equal/ReadVariableOp:value:0assert_greater_equal/y:output:0*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *F
else_branch7R5
3assert_greater_equal_Assert_AssertGuard_false_23308*
output_shapes
: *E
then_branch6R4
2assert_greater_equal_Assert_AssertGuard_true_23307�
0assert_greater_equal/Assert/AssertGuard/IdentityIdentity0assert_greater_equal/Assert/AssertGuard:output:0*
T0
*&
 _has_manual_control_dependencies(*
_output_shapes
: �
0polynomial_decay_pruning_schedule/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	�
'polynomial_decay_pruning_schedule/sub/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R �
%polynomial_decay_pruning_schedule/subSub8polynomial_decay_pruning_schedule/ReadVariableOp:value:00polynomial_decay_pruning_schedule/sub/y:output:0*
T0	*
_output_shapes
: �
&polynomial_decay_pruning_schedule/CastCast)polynomial_decay_pruning_schedule/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: �
+polynomial_decay_pruning_schedule/truediv/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  HB�
)polynomial_decay_pruning_schedule/truedivRealDiv*polynomial_decay_pruning_schedule/Cast:y:04polynomial_decay_pruning_schedule/truediv/y:output:0*
T0*
_output_shapes
: �
+polynomial_decay_pruning_schedule/Maximum/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *    �
)polynomial_decay_pruning_schedule/MaximumMaximum4polynomial_decay_pruning_schedule/Maximum/x:output:0-polynomial_decay_pruning_schedule/truediv:z:0*
T0*
_output_shapes
: �
+polynomial_decay_pruning_schedule/Minimum/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  �?�
)polynomial_decay_pruning_schedule/MinimumMinimum4polynomial_decay_pruning_schedule/Minimum/x:output:0-polynomial_decay_pruning_schedule/Maximum:z:0*
T0*
_output_shapes
: �
)polynomial_decay_pruning_schedule/sub_1/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  �?�
'polynomial_decay_pruning_schedule/sub_1Sub2polynomial_decay_pruning_schedule/sub_1/x:output:0-polynomial_decay_pruning_schedule/Minimum:z:0*
T0*
_output_shapes
: �
'polynomial_decay_pruning_schedule/Pow/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  @@�
%polynomial_decay_pruning_schedule/PowPow+polynomial_decay_pruning_schedule/sub_1:z:00polynomial_decay_pruning_schedule/Pow/y:output:0*
T0*
_output_shapes
: �
'polynomial_decay_pruning_schedule/Mul/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *��̾�
%polynomial_decay_pruning_schedule/MulMul0polynomial_decay_pruning_schedule/Mul/x:output:0)polynomial_decay_pruning_schedule/Pow:z:0*
T0*
_output_shapes
: �
,polynomial_decay_pruning_schedule/sparsity/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *fff?�
*polynomial_decay_pruning_schedule/sparsityAddV2)polynomial_decay_pruning_schedule/Mul:z:05polynomial_decay_pruning_schedule/sparsity/y:output:0*
T0*
_output_shapes
: �
GreaterEqual/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	�
GreaterEqual/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R {
GreaterEqualGreaterEqual#GreaterEqual/ReadVariableOp:value:0GreaterEqual/y:output:0*
T0	*
_output_shapes
: �
LessEqual/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	�
LessEqual/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R2o
	LessEqual	LessEqual LessEqual/ReadVariableOp:value:0LessEqual/y:output:0*
T0	*
_output_shapes
: {
Less/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
value	B :2{
Less/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
value	B : O
LessLessLess/x:output:0Less/y:output:0*
T0*
_output_shapes
: G
	LogicalOr	LogicalOrLessEqual:z:0Less:z:0*
_output_shapes
: Q

LogicalAnd
LogicalAndGreaterEqual:z:0LogicalOr:z:0*
_output_shapes
: �
Sub/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	z
Sub/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R W
SubSubSub/ReadVariableOp:value:0Sub/y:output:0*
T0	*
_output_shapes
: 

FloorMod/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 RdS
FloorModFloorModSub:z:0FloorMod/y:output:0*
T0	*
_output_shapes
: |
Equal/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R O
EqualEqualFloorMod:z:0Equal/y:output:0*
T0	*
_output_shapes
: M
LogicalAnd_1
LogicalAndLogicalAnd:z:0	Equal:z:0*
_output_shapes
: �
condIfLogicalAnd_1:z:0readvariableop_resourcecond_input_1cond_input_2cond_input_3LogicalAnd_1:z:0^AssignVariableOp*
Tcond0
*
Tin	
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: *$
_read_only_resource_inputs
*#
else_branchR
cond_false_23365*
output_shapes
: *"
then_branchR
cond_true_23364q
cond/IdentityIdentitycond:output:0*
T0
*&
 _has_manual_control_dependencies(*
_output_shapes
: i
update_1NoOp1^assert_greater_equal/Assert/AssertGuard/Identity^cond/Identity*
_output_shapes
 _
Mul/ReadVariableOpReadVariableOpcond_input_1*
_output_shapes

:*
dtype0h
Mul/ReadVariableOp_1ReadVariableOpcond_input_2^cond*
_output_shapes

:*
dtype0m
MulMulMul/ReadVariableOp:value:0Mul/ReadVariableOp_1:value:0*
T0*
_output_shapes

:�
AssignVariableOp_1AssignVariableOpcond_input_1Mul:z:0^Mul/ReadVariableOp^cond*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(�

group_depsNoOp^AssignVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 e
group_deps_1NoOp^group_deps",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 w
MatMul/ReadVariableOpReadVariableOpcond_input_1^AssignVariableOp_1*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^BiasAdd/ReadVariableOp^GreaterEqual/ReadVariableOp^LessEqual/ReadVariableOp^MatMul/ReadVariableOp^Mul/ReadVariableOp^Mul/ReadVariableOp_1^ReadVariableOp^Sub/ReadVariableOp(^assert_greater_equal/Assert/AssertGuard$^assert_greater_equal/ReadVariableOp^cond1^polynomial_decay_pruning_schedule/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : : : 2(
AssignVariableOp_1AssignVariableOp_12$
AssignVariableOpAssignVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2:
GreaterEqual/ReadVariableOpGreaterEqual/ReadVariableOp24
LessEqual/ReadVariableOpLessEqual/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2,
Mul/ReadVariableOp_1Mul/ReadVariableOp_12(
Mul/ReadVariableOpMul/ReadVariableOp2 
ReadVariableOpReadVariableOp2(
Sub/ReadVariableOpSub/ReadVariableOp2R
'assert_greater_equal/Assert/AssertGuard'assert_greater_equal/Assert/AssertGuard2J
#assert_greater_equal/ReadVariableOp#assert_greater_equal/ReadVariableOp2
condcond2d
0polynomial_decay_pruning_schedule/ReadVariableOp0polynomial_decay_pruning_schedule/ReadVariableOp:($
"
_user_specified_name
resource:'#
!
_user_specified_name	input_3:'#
!
_user_specified_name	input_2:'#
!
_user_specified_name	input_1:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�X
�
cond_true_22500H
>cond_polynomial_decay_pruning_schedule_readvariableop_resource:	 >
,cond_pruning_ops_abs_readvariableop_resource:0
cond_assignvariableop_resource:*
 cond_assignvariableop_1_resource: 
cond_identity_logicaland_1

cond_identity_1
��cond/AssignVariableOp�cond/AssignVariableOp_1� cond/GreaterEqual/ReadVariableOp�cond/LessEqual/ReadVariableOp�cond/Sub/ReadVariableOp�5cond/polynomial_decay_pruning_schedule/ReadVariableOp�#cond/pruning_ops/Abs/ReadVariableOp�
5cond/polynomial_decay_pruning_schedule/ReadVariableOpReadVariableOp>cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	n
,cond/polynomial_decay_pruning_schedule/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
*cond/polynomial_decay_pruning_schedule/subSub=cond/polynomial_decay_pruning_schedule/ReadVariableOp:value:05cond/polynomial_decay_pruning_schedule/sub/y:output:0*
T0	*
_output_shapes
: �
+cond/polynomial_decay_pruning_schedule/CastCast.cond/polynomial_decay_pruning_schedule/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: u
0cond/polynomial_decay_pruning_schedule/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  HB�
.cond/polynomial_decay_pruning_schedule/truedivRealDiv/cond/polynomial_decay_pruning_schedule/Cast:y:09cond/polynomial_decay_pruning_schedule/truediv/y:output:0*
T0*
_output_shapes
: u
0cond/polynomial_decay_pruning_schedule/Maximum/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
.cond/polynomial_decay_pruning_schedule/MaximumMaximum9cond/polynomial_decay_pruning_schedule/Maximum/x:output:02cond/polynomial_decay_pruning_schedule/truediv:z:0*
T0*
_output_shapes
: u
0cond/polynomial_decay_pruning_schedule/Minimum/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
.cond/polynomial_decay_pruning_schedule/MinimumMinimum9cond/polynomial_decay_pruning_schedule/Minimum/x:output:02cond/polynomial_decay_pruning_schedule/Maximum:z:0*
T0*
_output_shapes
: s
.cond/polynomial_decay_pruning_schedule/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
,cond/polynomial_decay_pruning_schedule/sub_1Sub7cond/polynomial_decay_pruning_schedule/sub_1/x:output:02cond/polynomial_decay_pruning_schedule/Minimum:z:0*
T0*
_output_shapes
: q
,cond/polynomial_decay_pruning_schedule/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@�
*cond/polynomial_decay_pruning_schedule/PowPow0cond/polynomial_decay_pruning_schedule/sub_1:z:05cond/polynomial_decay_pruning_schedule/Pow/y:output:0*
T0*
_output_shapes
: q
,cond/polynomial_decay_pruning_schedule/Mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��̾�
*cond/polynomial_decay_pruning_schedule/MulMul5cond/polynomial_decay_pruning_schedule/Mul/x:output:0.cond/polynomial_decay_pruning_schedule/Pow:z:0*
T0*
_output_shapes
: v
1cond/polynomial_decay_pruning_schedule/sparsity/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?�
/cond/polynomial_decay_pruning_schedule/sparsityAddV2.cond/polynomial_decay_pruning_schedule/Mul:z:0:cond/polynomial_decay_pruning_schedule/sparsity/y:output:0*
T0*
_output_shapes
: �
 cond/GreaterEqual/ReadVariableOpReadVariableOp>cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	U
cond/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
cond/GreaterEqualGreaterEqual(cond/GreaterEqual/ReadVariableOp:value:0cond/GreaterEqual/y:output:0*
T0	*
_output_shapes
: �
cond/LessEqual/ReadVariableOpReadVariableOp>cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	R
cond/LessEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R2~
cond/LessEqual	LessEqual%cond/LessEqual/ReadVariableOp:value:0cond/LessEqual/y:output:0*
T0	*
_output_shapes
: M
cond/Less/xConst*
_output_shapes
: *
dtype0*
value	B :2M
cond/Less/yConst*
_output_shapes
: *
dtype0*
value	B : ^
	cond/LessLesscond/Less/x:output:0cond/Less/y:output:0*
T0*
_output_shapes
: V
cond/LogicalOr	LogicalOrcond/LessEqual:z:0cond/Less:z:0*
_output_shapes
: `
cond/LogicalAnd
LogicalAndcond/GreaterEqual:z:0cond/LogicalOr:z:0*
_output_shapes
: �
cond/Sub/ReadVariableOpReadVariableOp>cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	L

cond/Sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R f
cond/SubSubcond/Sub/ReadVariableOp:value:0cond/Sub/y:output:0*
T0	*
_output_shapes
: Q
cond/FloorMod/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rdb
cond/FloorModFloorModcond/Sub:z:0cond/FloorMod/y:output:0*
T0	*
_output_shapes
: N
cond/Equal/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ^

cond/EqualEqualcond/FloorMod:z:0cond/Equal/y:output:0*
T0	*
_output_shapes
: \
cond/LogicalAnd_1
LogicalAndcond/LogicalAnd:z:0cond/Equal:z:0*
_output_shapes
: �
#cond/pruning_ops/Abs/ReadVariableOpReadVariableOp,cond_pruning_ops_abs_readvariableop_resource*
_output_shapes

:*
dtype0q
cond/pruning_ops/AbsAbs+cond/pruning_ops/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:W
cond/pruning_ops/SizeConst*
_output_shapes
: *
dtype0*
value	B :@m
cond/pruning_ops/CastCastcond/pruning_ops/Size:output:0*

DstT0*

SrcT0*
_output_shapes
: [
cond/pruning_ops/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
cond/pruning_ops/subSubcond/pruning_ops/sub/x:output:03cond/polynomial_decay_pruning_schedule/sparsity:z:0*
T0*
_output_shapes
: q
cond/pruning_ops/mulMulcond/pruning_ops/Cast:y:0cond/pruning_ops/sub:z:0*
T0*
_output_shapes
: Z
cond/pruning_ops/RoundRoundcond/pruning_ops/mul:z:0*
T0*
_output_shapes
: _
cond/pruning_ops/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
cond/pruning_ops/MaximumMaximumcond/pruning_ops/Round:y:0#cond/pruning_ops/Maximum/y:output:0*
T0*
_output_shapes
: m
cond/pruning_ops/Cast_1Castcond/pruning_ops/Maximum:z:0*

DstT0*

SrcT0*
_output_shapes
: q
cond/pruning_ops/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
cond/pruning_ops/ReshapeReshapecond/pruning_ops/Abs:y:0'cond/pruning_ops/Reshape/shape:output:0*
T0*
_output_shapes
:@Y
cond/pruning_ops/Size_1Const*
_output_shapes
: *
dtype0*
value	B :@�
cond/pruning_ops/TopKV2TopKV2!cond/pruning_ops/Reshape:output:0 cond/pruning_ops/Size_1:output:0*
T0* 
_output_shapes
:@:@Z
cond/pruning_ops/sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :~
cond/pruning_ops/sub_1Subcond/pruning_ops/Cast_1:y:0!cond/pruning_ops/sub_1/y:output:0*
T0*
_output_shapes
: `
cond/pruning_ops/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
cond/pruning_ops/GatherV2GatherV2 cond/pruning_ops/TopKV2:values:0cond/pruning_ops/sub_1:z:0'cond/pruning_ops/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: Z
cond/pruning_ops/sub_2/yConst*
_output_shapes
: *
dtype0*
value	B :~
cond/pruning_ops/sub_2Subcond/pruning_ops/Cast_1:y:0!cond/pruning_ops/sub_2/y:output:0*
T0*
_output_shapes
: b
 cond/pruning_ops/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
cond/pruning_ops/GatherV2_1GatherV2!cond/pruning_ops/TopKV2:indices:0cond/pruning_ops/sub_2:z:0)cond/pruning_ops/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: �
cond/pruning_ops/GreaterEqualGreaterEqualcond/pruning_ops/Abs:y:0"cond/pruning_ops/GatherV2:output:0*
T0*
_output_shapes

:Y
cond/pruning_ops/Size_2Const*
_output_shapes
: *
dtype0*
value	B :@`
cond/pruning_ops/one_hot/ConstConst*
_output_shapes
: *
dtype0
*
value	B
 Zb
 cond/pruning_ops/one_hot/Const_1Const*
_output_shapes
: *
dtype0
*
value	B
 Z �
cond/pruning_ops/one_hotOneHot$cond/pruning_ops/GatherV2_1:output:0 cond/pruning_ops/Size_2:output:0'cond/pruning_ops/one_hot/Const:output:0)cond/pruning_ops/one_hot/Const_1:output:0*
TI0*
T0
*
_output_shapes
:@q
 cond/pruning_ops/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
cond/pruning_ops/Reshape_1Reshape!cond/pruning_ops/one_hot:output:0)cond/pruning_ops/Reshape_1/shape:output:0*
T0
*
_output_shapes

:�
cond/pruning_ops/LogicalOr	LogicalOr!cond/pruning_ops/GreaterEqual:z:0#cond/pruning_ops/Reshape_1:output:0*
_output_shapes

:i
	cond/CastCastcond/pruning_ops/LogicalOr:z:0*

DstT0*

SrcT0
*
_output_shapes

:�
cond/AssignVariableOpAssignVariableOpcond_assignvariableop_resourcecond/Cast:y:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(�
cond/AssignVariableOp_1AssignVariableOp cond_assignvariableop_1_resource"cond/pruning_ops/GatherV2:output:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(�
cond/group_depsNoOp^cond/AssignVariableOp^cond/AssignVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 h
cond/IdentityIdentitycond_identity_logicaland_1^cond/group_deps*
T0
*
_output_shapes
: `
cond/Identity_1Identitycond/Identity:output:0
^cond/NoOp*
T0
*
_output_shapes
: �
	cond/NoOpNoOp^cond/AssignVariableOp^cond/AssignVariableOp_1!^cond/GreaterEqual/ReadVariableOp^cond/LessEqual/ReadVariableOp^cond/Sub/ReadVariableOp6^cond/polynomial_decay_pruning_schedule/ReadVariableOp$^cond/pruning_ops/Abs/ReadVariableOp*
_output_shapes
 "+
cond_identity_1cond/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : 22
cond/AssignVariableOp_1cond/AssignVariableOp_12.
cond/AssignVariableOpcond/AssignVariableOp2D
 cond/GreaterEqual/ReadVariableOp cond/GreaterEqual/ReadVariableOp2>
cond/LessEqual/ReadVariableOpcond/LessEqual/ReadVariableOp22
cond/Sub/ReadVariableOpcond/Sub/ReadVariableOp2n
5cond/polynomial_decay_pruning_schedule/ReadVariableOp5cond/polynomial_decay_pruning_schedule/ReadVariableOp2J
#cond/pruning_ops/Abs/ReadVariableOp#cond/pruning_ops/Abs/ReadVariableOp:D@

_output_shapes
: 
&
_user_specified_nameLogicalAnd_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:( $
"
_user_specified_name
resource
�
�
;__inference_prune_low_magnitude_dense_2_layer_call_fn_23508

inputs
unknown:
	unknown_0:
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *_
fZRX
V__inference_prune_low_magnitude_dense_2_layer_call_and_return_conditional_losses_22867o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name23504:%!

_user_specified_name23502:%!

_user_specified_name23500:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
3assert_greater_equal_Assert_AssertGuard_false_23308K
Gassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all
V
Rassert_greater_equal_assert_assertguard_assert_assert_greater_equal_readvariableop	I
Eassert_greater_equal_assert_assertguard_assert_assert_greater_equal_y	6
2assert_greater_equal_assert_assertguard_identity_1
��.assert_greater_equal/Assert/AssertGuard/Assert�
5assert_greater_equal/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*�
value�B� B�Prune() wrapper requires the UpdatePruningStep callback to be provided during training. Please add it as a callback to your model.fit call.�
5assert_greater_equal/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:�
5assert_greater_equal/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*=
value4B2 B,x (assert_greater_equal/ReadVariableOp:0) = �
5assert_greater_equal/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*0
value'B% By (assert_greater_equal/y:0) = �
.assert_greater_equal/Assert/AssertGuard/AssertAssertGassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all>assert_greater_equal/Assert/AssertGuard/Assert/data_0:output:0>assert_greater_equal/Assert/AssertGuard/Assert/data_1:output:0>assert_greater_equal/Assert/AssertGuard/Assert/data_2:output:0Rassert_greater_equal_assert_assertguard_assert_assert_greater_equal_readvariableop>assert_greater_equal/Assert/AssertGuard/Assert/data_4:output:0Eassert_greater_equal_assert_assertguard_assert_assert_greater_equal_y*
T

2		*&
 _has_manual_control_dependencies(*
_output_shapes
 �
0assert_greater_equal/Assert/AssertGuard/IdentityIdentityGassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all/^assert_greater_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: �
2assert_greater_equal/Assert/AssertGuard/Identity_1Identity9assert_greater_equal/Assert/AssertGuard/Identity:output:0-^assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: {
,assert_greater_equal/Assert/AssertGuard/NoOpNoOp/^assert_greater_equal/Assert/AssertGuard/Assert*
_output_shapes
 "q
2assert_greater_equal_assert_assertguard_identity_1;assert_greater_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2`
.assert_greater_equal/Assert/AssertGuard/Assert.assert_greater_equal/Assert/AssertGuard/Assert:NJ

_output_shapes
: 
0
_user_specified_nameassert_greater_equal/y:[W

_output_shapes
: 
=
_user_specified_name%#assert_greater_equal/ReadVariableOp:P L

_output_shapes
: 
2
_user_specified_nameassert_greater_equal/All
�
�
V__inference_prune_low_magnitude_dense_1_layer_call_and_return_conditional_losses_23482

inputs-
mul_readvariableop_resource:/
mul_readvariableop_1_resource:-
biasadd_readvariableop_resource:
identity��AssignVariableOp�BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�Mul/ReadVariableOp�Mul/ReadVariableOp_1'
	no_updateNoOp*
_output_shapes
 )
no_update_1NoOp*
_output_shapes
 n
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes

:*
dtype0r
Mul/ReadVariableOp_1ReadVariableOpmul_readvariableop_1_resource*
_output_shapes

:*
dtype0m
MulMulMul/ReadVariableOp:value:0Mul/ReadVariableOp_1:value:0*
T0*
_output_shapes

:�
AssignVariableOpAssignVariableOpmul_readvariableop_resourceMul:z:0^Mul/ReadVariableOp*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(�

group_depsNoOp^AssignVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 e
group_deps_1NoOp^group_deps",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 �
MatMul/ReadVariableOpReadVariableOpmul_readvariableop_resource^AssignVariableOp*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^AssignVariableOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^Mul/ReadVariableOp^Mul/ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:���������: : : 2$
AssignVariableOpAssignVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2,
Mul/ReadVariableOp_1Mul/ReadVariableOp_12(
Mul/ReadVariableOpMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
V__inference_prune_low_magnitude_dense_1_layer_call_and_return_conditional_losses_22845

inputs-
mul_readvariableop_resource:/
mul_readvariableop_1_resource:-
biasadd_readvariableop_resource:
identity��AssignVariableOp�BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�Mul/ReadVariableOp�Mul/ReadVariableOp_1'
	no_updateNoOp*
_output_shapes
 )
no_update_1NoOp*
_output_shapes
 n
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes

:*
dtype0r
Mul/ReadVariableOp_1ReadVariableOpmul_readvariableop_1_resource*
_output_shapes

:*
dtype0m
MulMulMul/ReadVariableOp:value:0Mul/ReadVariableOp_1:value:0*
T0*
_output_shapes

:�
AssignVariableOpAssignVariableOpmul_readvariableop_resourceMul:z:0^Mul/ReadVariableOp*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(�

group_depsNoOp^AssignVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 e
group_deps_1NoOp^group_deps",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 �
MatMul/ReadVariableOpReadVariableOpmul_readvariableop_resource^AssignVariableOp*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^AssignVariableOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^Mul/ReadVariableOp^Mul/ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:���������: : : 2$
AssignVariableOpAssignVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2,
Mul/ReadVariableOp_1Mul/ReadVariableOp_12(
Mul/ReadVariableOpMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
2assert_greater_equal_Assert_AssertGuard_true_22633M
Iassert_greater_equal_assert_assertguard_identity_assert_greater_equal_all
7
3assert_greater_equal_assert_assertguard_placeholder	9
5assert_greater_equal_assert_assertguard_placeholder_1	6
2assert_greater_equal_assert_assertguard_identity_1
r
,assert_greater_equal/Assert/AssertGuard/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
0assert_greater_equal/Assert/AssertGuard/IdentityIdentityIassert_greater_equal_assert_assertguard_identity_assert_greater_equal_all-^assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
2assert_greater_equal/Assert/AssertGuard/Identity_1Identity9assert_greater_equal/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "q
2assert_greater_equal_assert_assertguard_identity_1;assert_greater_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : :

_output_shapes
: :

_output_shapes
: :P L

_output_shapes
: 
2
_user_specified_nameassert_greater_equal/All
�
�
9__inference_prune_low_magnitude_dense_layer_call_fn_23068

inputs
unknown:
	unknown_0:
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_prune_low_magnitude_dense_layer_call_and_return_conditional_losses_22823o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name23064:%!

_user_specified_name23062:%!

_user_specified_name23060:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
T__inference_prune_low_magnitude_dense_layer_call_and_return_conditional_losses_22823

inputs-
mul_readvariableop_resource:/
mul_readvariableop_1_resource:-
biasadd_readvariableop_resource:
identity��AssignVariableOp�BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�Mul/ReadVariableOp�Mul/ReadVariableOp_1'
	no_updateNoOp*
_output_shapes
 )
no_update_1NoOp*
_output_shapes
 n
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes

:*
dtype0r
Mul/ReadVariableOp_1ReadVariableOpmul_readvariableop_1_resource*
_output_shapes

:*
dtype0m
MulMulMul/ReadVariableOp:value:0Mul/ReadVariableOp_1:value:0*
T0*
_output_shapes

:�
AssignVariableOpAssignVariableOpmul_readvariableop_resourceMul:z:0^Mul/ReadVariableOp*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(�

group_depsNoOp^AssignVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 e
group_deps_1NoOp^group_deps",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 �
MatMul/ReadVariableOpReadVariableOpmul_readvariableop_resource^AssignVariableOp*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^AssignVariableOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^Mul/ReadVariableOp^Mul/ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:���������: : : 2$
AssignVariableOpAssignVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2,
Mul/ReadVariableOp_1Mul/ReadVariableOp_12(
Mul/ReadVariableOpMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
9__inference_prune_low_magnitude_dense_layer_call_fn_23057

inputs
unknown:	 
	unknown_0:
	unknown_1:
	unknown_2: 
	unknown_3:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_prune_low_magnitude_dense_layer_call_and_return_conditional_losses_22413o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name23053:%!

_user_specified_name23051:%!

_user_specified_name23049:%!

_user_specified_name23047:%!

_user_specified_name23045:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�X
�
cond_true_23144H
>cond_polynomial_decay_pruning_schedule_readvariableop_resource:	 >
,cond_pruning_ops_abs_readvariableop_resource:0
cond_assignvariableop_resource:*
 cond_assignvariableop_1_resource: 
cond_identity_logicaland_1

cond_identity_1
��cond/AssignVariableOp�cond/AssignVariableOp_1� cond/GreaterEqual/ReadVariableOp�cond/LessEqual/ReadVariableOp�cond/Sub/ReadVariableOp�5cond/polynomial_decay_pruning_schedule/ReadVariableOp�#cond/pruning_ops/Abs/ReadVariableOp�
5cond/polynomial_decay_pruning_schedule/ReadVariableOpReadVariableOp>cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	n
,cond/polynomial_decay_pruning_schedule/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
*cond/polynomial_decay_pruning_schedule/subSub=cond/polynomial_decay_pruning_schedule/ReadVariableOp:value:05cond/polynomial_decay_pruning_schedule/sub/y:output:0*
T0	*
_output_shapes
: �
+cond/polynomial_decay_pruning_schedule/CastCast.cond/polynomial_decay_pruning_schedule/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: u
0cond/polynomial_decay_pruning_schedule/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  HB�
.cond/polynomial_decay_pruning_schedule/truedivRealDiv/cond/polynomial_decay_pruning_schedule/Cast:y:09cond/polynomial_decay_pruning_schedule/truediv/y:output:0*
T0*
_output_shapes
: u
0cond/polynomial_decay_pruning_schedule/Maximum/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
.cond/polynomial_decay_pruning_schedule/MaximumMaximum9cond/polynomial_decay_pruning_schedule/Maximum/x:output:02cond/polynomial_decay_pruning_schedule/truediv:z:0*
T0*
_output_shapes
: u
0cond/polynomial_decay_pruning_schedule/Minimum/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
.cond/polynomial_decay_pruning_schedule/MinimumMinimum9cond/polynomial_decay_pruning_schedule/Minimum/x:output:02cond/polynomial_decay_pruning_schedule/Maximum:z:0*
T0*
_output_shapes
: s
.cond/polynomial_decay_pruning_schedule/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
,cond/polynomial_decay_pruning_schedule/sub_1Sub7cond/polynomial_decay_pruning_schedule/sub_1/x:output:02cond/polynomial_decay_pruning_schedule/Minimum:z:0*
T0*
_output_shapes
: q
,cond/polynomial_decay_pruning_schedule/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@�
*cond/polynomial_decay_pruning_schedule/PowPow0cond/polynomial_decay_pruning_schedule/sub_1:z:05cond/polynomial_decay_pruning_schedule/Pow/y:output:0*
T0*
_output_shapes
: q
,cond/polynomial_decay_pruning_schedule/Mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��̾�
*cond/polynomial_decay_pruning_schedule/MulMul5cond/polynomial_decay_pruning_schedule/Mul/x:output:0.cond/polynomial_decay_pruning_schedule/Pow:z:0*
T0*
_output_shapes
: v
1cond/polynomial_decay_pruning_schedule/sparsity/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?�
/cond/polynomial_decay_pruning_schedule/sparsityAddV2.cond/polynomial_decay_pruning_schedule/Mul:z:0:cond/polynomial_decay_pruning_schedule/sparsity/y:output:0*
T0*
_output_shapes
: �
 cond/GreaterEqual/ReadVariableOpReadVariableOp>cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	U
cond/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
cond/GreaterEqualGreaterEqual(cond/GreaterEqual/ReadVariableOp:value:0cond/GreaterEqual/y:output:0*
T0	*
_output_shapes
: �
cond/LessEqual/ReadVariableOpReadVariableOp>cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	R
cond/LessEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R2~
cond/LessEqual	LessEqual%cond/LessEqual/ReadVariableOp:value:0cond/LessEqual/y:output:0*
T0	*
_output_shapes
: M
cond/Less/xConst*
_output_shapes
: *
dtype0*
value	B :2M
cond/Less/yConst*
_output_shapes
: *
dtype0*
value	B : ^
	cond/LessLesscond/Less/x:output:0cond/Less/y:output:0*
T0*
_output_shapes
: V
cond/LogicalOr	LogicalOrcond/LessEqual:z:0cond/Less:z:0*
_output_shapes
: `
cond/LogicalAnd
LogicalAndcond/GreaterEqual:z:0cond/LogicalOr:z:0*
_output_shapes
: �
cond/Sub/ReadVariableOpReadVariableOp>cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	L

cond/Sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R f
cond/SubSubcond/Sub/ReadVariableOp:value:0cond/Sub/y:output:0*
T0	*
_output_shapes
: Q
cond/FloorMod/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rdb
cond/FloorModFloorModcond/Sub:z:0cond/FloorMod/y:output:0*
T0	*
_output_shapes
: N
cond/Equal/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ^

cond/EqualEqualcond/FloorMod:z:0cond/Equal/y:output:0*
T0	*
_output_shapes
: \
cond/LogicalAnd_1
LogicalAndcond/LogicalAnd:z:0cond/Equal:z:0*
_output_shapes
: �
#cond/pruning_ops/Abs/ReadVariableOpReadVariableOp,cond_pruning_ops_abs_readvariableop_resource*
_output_shapes

:*
dtype0q
cond/pruning_ops/AbsAbs+cond/pruning_ops/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:W
cond/pruning_ops/SizeConst*
_output_shapes
: *
dtype0*
value	B : m
cond/pruning_ops/CastCastcond/pruning_ops/Size:output:0*

DstT0*

SrcT0*
_output_shapes
: [
cond/pruning_ops/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
cond/pruning_ops/subSubcond/pruning_ops/sub/x:output:03cond/polynomial_decay_pruning_schedule/sparsity:z:0*
T0*
_output_shapes
: q
cond/pruning_ops/mulMulcond/pruning_ops/Cast:y:0cond/pruning_ops/sub:z:0*
T0*
_output_shapes
: Z
cond/pruning_ops/RoundRoundcond/pruning_ops/mul:z:0*
T0*
_output_shapes
: _
cond/pruning_ops/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
cond/pruning_ops/MaximumMaximumcond/pruning_ops/Round:y:0#cond/pruning_ops/Maximum/y:output:0*
T0*
_output_shapes
: m
cond/pruning_ops/Cast_1Castcond/pruning_ops/Maximum:z:0*

DstT0*

SrcT0*
_output_shapes
: q
cond/pruning_ops/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
cond/pruning_ops/ReshapeReshapecond/pruning_ops/Abs:y:0'cond/pruning_ops/Reshape/shape:output:0*
T0*
_output_shapes
: Y
cond/pruning_ops/Size_1Const*
_output_shapes
: *
dtype0*
value	B : �
cond/pruning_ops/TopKV2TopKV2!cond/pruning_ops/Reshape:output:0 cond/pruning_ops/Size_1:output:0*
T0* 
_output_shapes
: : Z
cond/pruning_ops/sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :~
cond/pruning_ops/sub_1Subcond/pruning_ops/Cast_1:y:0!cond/pruning_ops/sub_1/y:output:0*
T0*
_output_shapes
: `
cond/pruning_ops/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
cond/pruning_ops/GatherV2GatherV2 cond/pruning_ops/TopKV2:values:0cond/pruning_ops/sub_1:z:0'cond/pruning_ops/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: Z
cond/pruning_ops/sub_2/yConst*
_output_shapes
: *
dtype0*
value	B :~
cond/pruning_ops/sub_2Subcond/pruning_ops/Cast_1:y:0!cond/pruning_ops/sub_2/y:output:0*
T0*
_output_shapes
: b
 cond/pruning_ops/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
cond/pruning_ops/GatherV2_1GatherV2!cond/pruning_ops/TopKV2:indices:0cond/pruning_ops/sub_2:z:0)cond/pruning_ops/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: �
cond/pruning_ops/GreaterEqualGreaterEqualcond/pruning_ops/Abs:y:0"cond/pruning_ops/GatherV2:output:0*
T0*
_output_shapes

:Y
cond/pruning_ops/Size_2Const*
_output_shapes
: *
dtype0*
value	B : `
cond/pruning_ops/one_hot/ConstConst*
_output_shapes
: *
dtype0
*
value	B
 Zb
 cond/pruning_ops/one_hot/Const_1Const*
_output_shapes
: *
dtype0
*
value	B
 Z �
cond/pruning_ops/one_hotOneHot$cond/pruning_ops/GatherV2_1:output:0 cond/pruning_ops/Size_2:output:0'cond/pruning_ops/one_hot/Const:output:0)cond/pruning_ops/one_hot/Const_1:output:0*
TI0*
T0
*
_output_shapes
: q
 cond/pruning_ops/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
cond/pruning_ops/Reshape_1Reshape!cond/pruning_ops/one_hot:output:0)cond/pruning_ops/Reshape_1/shape:output:0*
T0
*
_output_shapes

:�
cond/pruning_ops/LogicalOr	LogicalOr!cond/pruning_ops/GreaterEqual:z:0#cond/pruning_ops/Reshape_1:output:0*
_output_shapes

:i
	cond/CastCastcond/pruning_ops/LogicalOr:z:0*

DstT0*

SrcT0
*
_output_shapes

:�
cond/AssignVariableOpAssignVariableOpcond_assignvariableop_resourcecond/Cast:y:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(�
cond/AssignVariableOp_1AssignVariableOp cond_assignvariableop_1_resource"cond/pruning_ops/GatherV2:output:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(�
cond/group_depsNoOp^cond/AssignVariableOp^cond/AssignVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 h
cond/IdentityIdentitycond_identity_logicaland_1^cond/group_deps*
T0
*
_output_shapes
: `
cond/Identity_1Identitycond/Identity:output:0
^cond/NoOp*
T0
*
_output_shapes
: �
	cond/NoOpNoOp^cond/AssignVariableOp^cond/AssignVariableOp_1!^cond/GreaterEqual/ReadVariableOp^cond/LessEqual/ReadVariableOp^cond/Sub/ReadVariableOp6^cond/polynomial_decay_pruning_schedule/ReadVariableOp$^cond/pruning_ops/Abs/ReadVariableOp*
_output_shapes
 "+
cond_identity_1cond/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : 22
cond/AssignVariableOp_1cond/AssignVariableOp_12.
cond/AssignVariableOpcond/AssignVariableOp2D
 cond/GreaterEqual/ReadVariableOp cond/GreaterEqual/ReadVariableOp2>
cond/LessEqual/ReadVariableOpcond/LessEqual/ReadVariableOp22
cond/Sub/ReadVariableOpcond/Sub/ReadVariableOp2n
5cond/polynomial_decay_pruning_schedule/ReadVariableOp5cond/polynomial_decay_pruning_schedule/ReadVariableOp2J
#cond/pruning_ops/Abs/ReadVariableOp#cond/pruning_ops/Abs/ReadVariableOp:D@

_output_shapes
: 
&
_user_specified_nameLogicalAnd_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:( $
"
_user_specified_name
resource
�
�
cond_false_23145
cond_placeholder
cond_placeholder_1
cond_placeholder_2
cond_placeholder_3
cond_identity_logicaland_1

cond_identity_1
O
	cond/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 b
cond/IdentityIdentitycond_identity_logicaland_1
^cond/NoOp*
T0
*
_output_shapes
: T
cond/Identity_1Identitycond/Identity:output:0*
T0
*
_output_shapes
: "+
cond_identity_1cond/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : :D@

_output_shapes
: 
&
_user_specified_nameLogicalAnd_1
�`
�
T__inference_prune_low_magnitude_dense_layer_call_and_return_conditional_losses_22413

inputs!
readvariableop_resource:	 
cond_input_1:
cond_input_2:
cond_input_3: -
biasadd_readvariableop_resource:
identity��AssignVariableOp�AssignVariableOp_1�BiasAdd/ReadVariableOp�GreaterEqual/ReadVariableOp�LessEqual/ReadVariableOp�MatMul/ReadVariableOp�Mul/ReadVariableOp�Mul/ReadVariableOp_1�ReadVariableOp�Sub/ReadVariableOp�'assert_greater_equal/Assert/AssertGuard�#assert_greater_equal/ReadVariableOp�cond�0polynomial_decay_pruning_schedule/ReadVariableOp^
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0	G
add/yConst*
_output_shapes
: *
dtype0	*
value	B	 RU
addAddV2ReadVariableOp:value:0add/y:output:0*
T0	*
_output_shapes
: �
AssignVariableOpAssignVariableOpreadvariableop_resourceadd:z:0^ReadVariableOp*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	*
validate_shape(7
updateNoOp^AssignVariableOp*
_output_shapes
 �
#assert_greater_equal/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp*
_output_shapes
: *
dtype0	X
assert_greater_equal/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
!assert_greater_equal/GreaterEqualGreaterEqual+assert_greater_equal/ReadVariableOp:value:0assert_greater_equal/y:output:0*
T0	*
_output_shapes
: [
assert_greater_equal/RankConst*
_output_shapes
: *
dtype0*
value	B : b
 assert_greater_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : b
 assert_greater_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
assert_greater_equal/rangeRange)assert_greater_equal/range/start:output:0"assert_greater_equal/Rank:output:0)assert_greater_equal/range/delta:output:0*
_output_shapes
: �
assert_greater_equal/AllAll%assert_greater_equal/GreaterEqual:z:0#assert_greater_equal/range:output:0*
_output_shapes
: �
!assert_greater_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*�
value�B� B�Prune() wrapper requires the UpdatePruningStep callback to be provided during training. Please add it as a callback to your model.fit call.�
#assert_greater_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:�
#assert_greater_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*=
value4B2 B,x (assert_greater_equal/ReadVariableOp:0) = �
#assert_greater_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*0
value'B% By (assert_greater_equal/y:0) = �
'assert_greater_equal/Assert/AssertGuardIf!assert_greater_equal/All:output:0!assert_greater_equal/All:output:0+assert_greater_equal/ReadVariableOp:value:0assert_greater_equal/y:output:0*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *F
else_branch7R5
3assert_greater_equal_Assert_AssertGuard_false_22254*
output_shapes
: *E
then_branch6R4
2assert_greater_equal_Assert_AssertGuard_true_22253�
0assert_greater_equal/Assert/AssertGuard/IdentityIdentity0assert_greater_equal/Assert/AssertGuard:output:0*
T0
*&
 _has_manual_control_dependencies(*
_output_shapes
: �
0polynomial_decay_pruning_schedule/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	�
'polynomial_decay_pruning_schedule/sub/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R �
%polynomial_decay_pruning_schedule/subSub8polynomial_decay_pruning_schedule/ReadVariableOp:value:00polynomial_decay_pruning_schedule/sub/y:output:0*
T0	*
_output_shapes
: �
&polynomial_decay_pruning_schedule/CastCast)polynomial_decay_pruning_schedule/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: �
+polynomial_decay_pruning_schedule/truediv/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  HB�
)polynomial_decay_pruning_schedule/truedivRealDiv*polynomial_decay_pruning_schedule/Cast:y:04polynomial_decay_pruning_schedule/truediv/y:output:0*
T0*
_output_shapes
: �
+polynomial_decay_pruning_schedule/Maximum/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *    �
)polynomial_decay_pruning_schedule/MaximumMaximum4polynomial_decay_pruning_schedule/Maximum/x:output:0-polynomial_decay_pruning_schedule/truediv:z:0*
T0*
_output_shapes
: �
+polynomial_decay_pruning_schedule/Minimum/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  �?�
)polynomial_decay_pruning_schedule/MinimumMinimum4polynomial_decay_pruning_schedule/Minimum/x:output:0-polynomial_decay_pruning_schedule/Maximum:z:0*
T0*
_output_shapes
: �
)polynomial_decay_pruning_schedule/sub_1/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  �?�
'polynomial_decay_pruning_schedule/sub_1Sub2polynomial_decay_pruning_schedule/sub_1/x:output:0-polynomial_decay_pruning_schedule/Minimum:z:0*
T0*
_output_shapes
: �
'polynomial_decay_pruning_schedule/Pow/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  @@�
%polynomial_decay_pruning_schedule/PowPow+polynomial_decay_pruning_schedule/sub_1:z:00polynomial_decay_pruning_schedule/Pow/y:output:0*
T0*
_output_shapes
: �
'polynomial_decay_pruning_schedule/Mul/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *��̾�
%polynomial_decay_pruning_schedule/MulMul0polynomial_decay_pruning_schedule/Mul/x:output:0)polynomial_decay_pruning_schedule/Pow:z:0*
T0*
_output_shapes
: �
,polynomial_decay_pruning_schedule/sparsity/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *fff?�
*polynomial_decay_pruning_schedule/sparsityAddV2)polynomial_decay_pruning_schedule/Mul:z:05polynomial_decay_pruning_schedule/sparsity/y:output:0*
T0*
_output_shapes
: �
GreaterEqual/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	�
GreaterEqual/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R {
GreaterEqualGreaterEqual#GreaterEqual/ReadVariableOp:value:0GreaterEqual/y:output:0*
T0	*
_output_shapes
: �
LessEqual/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	�
LessEqual/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R2o
	LessEqual	LessEqual LessEqual/ReadVariableOp:value:0LessEqual/y:output:0*
T0	*
_output_shapes
: {
Less/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
value	B :2{
Less/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
value	B : O
LessLessLess/x:output:0Less/y:output:0*
T0*
_output_shapes
: G
	LogicalOr	LogicalOrLessEqual:z:0Less:z:0*
_output_shapes
: Q

LogicalAnd
LogicalAndGreaterEqual:z:0LogicalOr:z:0*
_output_shapes
: �
Sub/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	z
Sub/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R W
SubSubSub/ReadVariableOp:value:0Sub/y:output:0*
T0	*
_output_shapes
: 

FloorMod/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 RdS
FloorModFloorModSub:z:0FloorMod/y:output:0*
T0	*
_output_shapes
: |
Equal/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R O
EqualEqualFloorMod:z:0Equal/y:output:0*
T0	*
_output_shapes
: M
LogicalAnd_1
LogicalAndLogicalAnd:z:0	Equal:z:0*
_output_shapes
: �
condIfLogicalAnd_1:z:0readvariableop_resourcecond_input_1cond_input_2cond_input_3LogicalAnd_1:z:0^AssignVariableOp*
Tcond0
*
Tin	
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: *$
_read_only_resource_inputs
*#
else_branchR
cond_false_22311*
output_shapes
: *"
then_branchR
cond_true_22310q
cond/IdentityIdentitycond:output:0*
T0
*&
 _has_manual_control_dependencies(*
_output_shapes
: i
update_1NoOp1^assert_greater_equal/Assert/AssertGuard/Identity^cond/Identity*
_output_shapes
 _
Mul/ReadVariableOpReadVariableOpcond_input_1*
_output_shapes

:*
dtype0h
Mul/ReadVariableOp_1ReadVariableOpcond_input_2^cond*
_output_shapes

:*
dtype0m
MulMulMul/ReadVariableOp:value:0Mul/ReadVariableOp_1:value:0*
T0*
_output_shapes

:�
AssignVariableOp_1AssignVariableOpcond_input_1Mul:z:0^Mul/ReadVariableOp^cond*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(�

group_depsNoOp^AssignVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 e
group_deps_1NoOp^group_deps",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 w
MatMul/ReadVariableOpReadVariableOpcond_input_1^AssignVariableOp_1*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^BiasAdd/ReadVariableOp^GreaterEqual/ReadVariableOp^LessEqual/ReadVariableOp^MatMul/ReadVariableOp^Mul/ReadVariableOp^Mul/ReadVariableOp_1^ReadVariableOp^Sub/ReadVariableOp(^assert_greater_equal/Assert/AssertGuard$^assert_greater_equal/ReadVariableOp^cond1^polynomial_decay_pruning_schedule/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : : : 2(
AssignVariableOp_1AssignVariableOp_12$
AssignVariableOpAssignVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2:
GreaterEqual/ReadVariableOpGreaterEqual/ReadVariableOp24
LessEqual/ReadVariableOpLessEqual/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2,
Mul/ReadVariableOp_1Mul/ReadVariableOp_12(
Mul/ReadVariableOpMul/ReadVariableOp2 
ReadVariableOpReadVariableOp2(
Sub/ReadVariableOpSub/ReadVariableOp2R
'assert_greater_equal/Assert/AssertGuard'assert_greater_equal/Assert/AssertGuard2J
#assert_greater_equal/ReadVariableOp#assert_greater_equal/ReadVariableOp2
condcond2d
0polynomial_decay_pruning_schedule/ReadVariableOp0polynomial_decay_pruning_schedule/ReadVariableOp:($
"
_user_specified_name
resource:'#
!
_user_specified_name	input_3:'#
!
_user_specified_name	input_2:'#
!
_user_specified_name	input_1:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
*__inference_sequential_layer_call_fn_22911
dense_input
unknown:	 
	unknown_0:
	unknown_1:
	unknown_2: 
	unknown_3:
	unknown_4:	 
	unknown_5:
	unknown_6:
	unknown_7: 
	unknown_8:
	unknown_9:	 

unknown_10:

unknown_11:

unknown_12: 

unknown_13:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*%
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_22806o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:���������: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name22907:%!

_user_specified_name22905:%!

_user_specified_name22903:%!

_user_specified_name22901:%!

_user_specified_name22899:%
!

_user_specified_name22897:%	!

_user_specified_name22895:%!

_user_specified_name22893:%!

_user_specified_name22891:%!

_user_specified_name22889:%!

_user_specified_name22887:%!

_user_specified_name22885:%!

_user_specified_name22883:%!

_user_specified_name22881:%!

_user_specified_name22879:T P
'
_output_shapes
:���������
%
_user_specified_namedense_input
�
�
2assert_greater_equal_Assert_AssertGuard_true_23527M
Iassert_greater_equal_assert_assertguard_identity_assert_greater_equal_all
7
3assert_greater_equal_assert_assertguard_placeholder	9
5assert_greater_equal_assert_assertguard_placeholder_1	6
2assert_greater_equal_assert_assertguard_identity_1
r
,assert_greater_equal/Assert/AssertGuard/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
0assert_greater_equal/Assert/AssertGuard/IdentityIdentityIassert_greater_equal_assert_assertguard_identity_assert_greater_equal_all-^assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
2assert_greater_equal/Assert/AssertGuard/Identity_1Identity9assert_greater_equal/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "q
2assert_greater_equal_assert_assertguard_identity_1;assert_greater_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : :

_output_shapes
: :

_output_shapes
: :P L

_output_shapes
: 
2
_user_specified_nameassert_greater_equal/All
�`
�
V__inference_prune_low_magnitude_dense_2_layer_call_and_return_conditional_losses_22793

inputs!
readvariableop_resource:	 
cond_input_1:
cond_input_2:
cond_input_3: -
biasadd_readvariableop_resource:
identity��AssignVariableOp�AssignVariableOp_1�BiasAdd/ReadVariableOp�GreaterEqual/ReadVariableOp�LessEqual/ReadVariableOp�MatMul/ReadVariableOp�Mul/ReadVariableOp�Mul/ReadVariableOp_1�ReadVariableOp�Sub/ReadVariableOp�'assert_greater_equal/Assert/AssertGuard�#assert_greater_equal/ReadVariableOp�cond�0polynomial_decay_pruning_schedule/ReadVariableOp^
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0	G
add/yConst*
_output_shapes
: *
dtype0	*
value	B	 RU
addAddV2ReadVariableOp:value:0add/y:output:0*
T0	*
_output_shapes
: �
AssignVariableOpAssignVariableOpreadvariableop_resourceadd:z:0^ReadVariableOp*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	*
validate_shape(7
updateNoOp^AssignVariableOp*
_output_shapes
 �
#assert_greater_equal/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp*
_output_shapes
: *
dtype0	X
assert_greater_equal/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
!assert_greater_equal/GreaterEqualGreaterEqual+assert_greater_equal/ReadVariableOp:value:0assert_greater_equal/y:output:0*
T0	*
_output_shapes
: [
assert_greater_equal/RankConst*
_output_shapes
: *
dtype0*
value	B : b
 assert_greater_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : b
 assert_greater_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
assert_greater_equal/rangeRange)assert_greater_equal/range/start:output:0"assert_greater_equal/Rank:output:0)assert_greater_equal/range/delta:output:0*
_output_shapes
: �
assert_greater_equal/AllAll%assert_greater_equal/GreaterEqual:z:0#assert_greater_equal/range:output:0*
_output_shapes
: �
!assert_greater_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*�
value�B� B�Prune() wrapper requires the UpdatePruningStep callback to be provided during training. Please add it as a callback to your model.fit call.�
#assert_greater_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:�
#assert_greater_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*=
value4B2 B,x (assert_greater_equal/ReadVariableOp:0) = �
#assert_greater_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*0
value'B% By (assert_greater_equal/y:0) = �
'assert_greater_equal/Assert/AssertGuardIf!assert_greater_equal/All:output:0!assert_greater_equal/All:output:0+assert_greater_equal/ReadVariableOp:value:0assert_greater_equal/y:output:0*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *F
else_branch7R5
3assert_greater_equal_Assert_AssertGuard_false_22634*
output_shapes
: *E
then_branch6R4
2assert_greater_equal_Assert_AssertGuard_true_22633�
0assert_greater_equal/Assert/AssertGuard/IdentityIdentity0assert_greater_equal/Assert/AssertGuard:output:0*
T0
*&
 _has_manual_control_dependencies(*
_output_shapes
: �
0polynomial_decay_pruning_schedule/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	�
'polynomial_decay_pruning_schedule/sub/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R �
%polynomial_decay_pruning_schedule/subSub8polynomial_decay_pruning_schedule/ReadVariableOp:value:00polynomial_decay_pruning_schedule/sub/y:output:0*
T0	*
_output_shapes
: �
&polynomial_decay_pruning_schedule/CastCast)polynomial_decay_pruning_schedule/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: �
+polynomial_decay_pruning_schedule/truediv/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  HB�
)polynomial_decay_pruning_schedule/truedivRealDiv*polynomial_decay_pruning_schedule/Cast:y:04polynomial_decay_pruning_schedule/truediv/y:output:0*
T0*
_output_shapes
: �
+polynomial_decay_pruning_schedule/Maximum/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *    �
)polynomial_decay_pruning_schedule/MaximumMaximum4polynomial_decay_pruning_schedule/Maximum/x:output:0-polynomial_decay_pruning_schedule/truediv:z:0*
T0*
_output_shapes
: �
+polynomial_decay_pruning_schedule/Minimum/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  �?�
)polynomial_decay_pruning_schedule/MinimumMinimum4polynomial_decay_pruning_schedule/Minimum/x:output:0-polynomial_decay_pruning_schedule/Maximum:z:0*
T0*
_output_shapes
: �
)polynomial_decay_pruning_schedule/sub_1/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  �?�
'polynomial_decay_pruning_schedule/sub_1Sub2polynomial_decay_pruning_schedule/sub_1/x:output:0-polynomial_decay_pruning_schedule/Minimum:z:0*
T0*
_output_shapes
: �
'polynomial_decay_pruning_schedule/Pow/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  @@�
%polynomial_decay_pruning_schedule/PowPow+polynomial_decay_pruning_schedule/sub_1:z:00polynomial_decay_pruning_schedule/Pow/y:output:0*
T0*
_output_shapes
: �
'polynomial_decay_pruning_schedule/Mul/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *��̾�
%polynomial_decay_pruning_schedule/MulMul0polynomial_decay_pruning_schedule/Mul/x:output:0)polynomial_decay_pruning_schedule/Pow:z:0*
T0*
_output_shapes
: �
,polynomial_decay_pruning_schedule/sparsity/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *fff?�
*polynomial_decay_pruning_schedule/sparsityAddV2)polynomial_decay_pruning_schedule/Mul:z:05polynomial_decay_pruning_schedule/sparsity/y:output:0*
T0*
_output_shapes
: �
GreaterEqual/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	�
GreaterEqual/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R {
GreaterEqualGreaterEqual#GreaterEqual/ReadVariableOp:value:0GreaterEqual/y:output:0*
T0	*
_output_shapes
: �
LessEqual/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	�
LessEqual/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R2o
	LessEqual	LessEqual LessEqual/ReadVariableOp:value:0LessEqual/y:output:0*
T0	*
_output_shapes
: {
Less/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
value	B :2{
Less/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
value	B : O
LessLessLess/x:output:0Less/y:output:0*
T0*
_output_shapes
: G
	LogicalOr	LogicalOrLessEqual:z:0Less:z:0*
_output_shapes
: Q

LogicalAnd
LogicalAndGreaterEqual:z:0LogicalOr:z:0*
_output_shapes
: �
Sub/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	z
Sub/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R W
SubSubSub/ReadVariableOp:value:0Sub/y:output:0*
T0	*
_output_shapes
: 

FloorMod/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 RdS
FloorModFloorModSub:z:0FloorMod/y:output:0*
T0	*
_output_shapes
: |
Equal/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R O
EqualEqualFloorMod:z:0Equal/y:output:0*
T0	*
_output_shapes
: M
LogicalAnd_1
LogicalAndLogicalAnd:z:0	Equal:z:0*
_output_shapes
: �
condIfLogicalAnd_1:z:0readvariableop_resourcecond_input_1cond_input_2cond_input_3LogicalAnd_1:z:0^AssignVariableOp*
Tcond0
*
Tin	
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: *$
_read_only_resource_inputs
*#
else_branchR
cond_false_22691*
output_shapes
: *"
then_branchR
cond_true_22690q
cond/IdentityIdentitycond:output:0*
T0
*&
 _has_manual_control_dependencies(*
_output_shapes
: i
update_1NoOp1^assert_greater_equal/Assert/AssertGuard/Identity^cond/Identity*
_output_shapes
 _
Mul/ReadVariableOpReadVariableOpcond_input_1*
_output_shapes

:*
dtype0h
Mul/ReadVariableOp_1ReadVariableOpcond_input_2^cond*
_output_shapes

:*
dtype0m
MulMulMul/ReadVariableOp:value:0Mul/ReadVariableOp_1:value:0*
T0*
_output_shapes

:�
AssignVariableOp_1AssignVariableOpcond_input_1Mul:z:0^Mul/ReadVariableOp^cond*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(�

group_depsNoOp^AssignVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 e
group_deps_1NoOp^group_deps",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 w
MatMul/ReadVariableOpReadVariableOpcond_input_1^AssignVariableOp_1*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^BiasAdd/ReadVariableOp^GreaterEqual/ReadVariableOp^LessEqual/ReadVariableOp^MatMul/ReadVariableOp^Mul/ReadVariableOp^Mul/ReadVariableOp_1^ReadVariableOp^Sub/ReadVariableOp(^assert_greater_equal/Assert/AssertGuard$^assert_greater_equal/ReadVariableOp^cond1^polynomial_decay_pruning_schedule/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : : : 2(
AssignVariableOp_1AssignVariableOp_12$
AssignVariableOpAssignVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2:
GreaterEqual/ReadVariableOpGreaterEqual/ReadVariableOp24
LessEqual/ReadVariableOpLessEqual/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2,
Mul/ReadVariableOp_1Mul/ReadVariableOp_12(
Mul/ReadVariableOpMul/ReadVariableOp2 
ReadVariableOpReadVariableOp2(
Sub/ReadVariableOpSub/ReadVariableOp2R
'assert_greater_equal/Assert/AssertGuard'assert_greater_equal/Assert/AssertGuard2J
#assert_greater_equal/ReadVariableOp#assert_greater_equal/ReadVariableOp2
condcond2d
0polynomial_decay_pruning_schedule/ReadVariableOp0polynomial_decay_pruning_schedule/ReadVariableOp:($
"
_user_specified_name
resource:'#
!
_user_specified_name	input_3:'#
!
_user_specified_name	input_2:'#
!
_user_specified_name	input_1:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
2assert_greater_equal_Assert_AssertGuard_true_23087M
Iassert_greater_equal_assert_assertguard_identity_assert_greater_equal_all
7
3assert_greater_equal_assert_assertguard_placeholder	9
5assert_greater_equal_assert_assertguard_placeholder_1	6
2assert_greater_equal_assert_assertguard_identity_1
r
,assert_greater_equal/Assert/AssertGuard/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
0assert_greater_equal/Assert/AssertGuard/IdentityIdentityIassert_greater_equal_assert_assertguard_identity_assert_greater_equal_all-^assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
2assert_greater_equal/Assert/AssertGuard/Identity_1Identity9assert_greater_equal/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "q
2assert_greater_equal_assert_assertguard_identity_1;assert_greater_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : :

_output_shapes
: :

_output_shapes
: :P L

_output_shapes
: 
2
_user_specified_nameassert_greater_equal/All
�
�
2assert_greater_equal_Assert_AssertGuard_true_22253M
Iassert_greater_equal_assert_assertguard_identity_assert_greater_equal_all
7
3assert_greater_equal_assert_assertguard_placeholder	9
5assert_greater_equal_assert_assertguard_placeholder_1	6
2assert_greater_equal_assert_assertguard_identity_1
r
,assert_greater_equal/Assert/AssertGuard/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
0assert_greater_equal/Assert/AssertGuard/IdentityIdentityIassert_greater_equal_assert_assertguard_identity_assert_greater_equal_all-^assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
2assert_greater_equal/Assert/AssertGuard/Identity_1Identity9assert_greater_equal/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "q
2assert_greater_equal_assert_assertguard_identity_1;assert_greater_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : :

_output_shapes
: :

_output_shapes
: :P L

_output_shapes
: 
2
_user_specified_nameassert_greater_equal/All
�
�
3assert_greater_equal_Assert_AssertGuard_false_22444K
Gassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all
V
Rassert_greater_equal_assert_assertguard_assert_assert_greater_equal_readvariableop	I
Eassert_greater_equal_assert_assertguard_assert_assert_greater_equal_y	6
2assert_greater_equal_assert_assertguard_identity_1
��.assert_greater_equal/Assert/AssertGuard/Assert�
5assert_greater_equal/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*�
value�B� B�Prune() wrapper requires the UpdatePruningStep callback to be provided during training. Please add it as a callback to your model.fit call.�
5assert_greater_equal/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:�
5assert_greater_equal/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*=
value4B2 B,x (assert_greater_equal/ReadVariableOp:0) = �
5assert_greater_equal/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*0
value'B% By (assert_greater_equal/y:0) = �
.assert_greater_equal/Assert/AssertGuard/AssertAssertGassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all>assert_greater_equal/Assert/AssertGuard/Assert/data_0:output:0>assert_greater_equal/Assert/AssertGuard/Assert/data_1:output:0>assert_greater_equal/Assert/AssertGuard/Assert/data_2:output:0Rassert_greater_equal_assert_assertguard_assert_assert_greater_equal_readvariableop>assert_greater_equal/Assert/AssertGuard/Assert/data_4:output:0Eassert_greater_equal_assert_assertguard_assert_assert_greater_equal_y*
T

2		*&
 _has_manual_control_dependencies(*
_output_shapes
 �
0assert_greater_equal/Assert/AssertGuard/IdentityIdentityGassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all/^assert_greater_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: �
2assert_greater_equal/Assert/AssertGuard/Identity_1Identity9assert_greater_equal/Assert/AssertGuard/Identity:output:0-^assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: {
,assert_greater_equal/Assert/AssertGuard/NoOpNoOp/^assert_greater_equal/Assert/AssertGuard/Assert*
_output_shapes
 "q
2assert_greater_equal_assert_assertguard_identity_1;assert_greater_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2`
.assert_greater_equal/Assert/AssertGuard/Assert.assert_greater_equal/Assert/AssertGuard/Assert:NJ

_output_shapes
: 
0
_user_specified_nameassert_greater_equal/y:[W

_output_shapes
: 
=
_user_specified_name%#assert_greater_equal/ReadVariableOp:P L

_output_shapes
: 
2
_user_specified_nameassert_greater_equal/All
�`
�
T__inference_prune_low_magnitude_dense_layer_call_and_return_conditional_losses_23247

inputs!
readvariableop_resource:	 
cond_input_1:
cond_input_2:
cond_input_3: -
biasadd_readvariableop_resource:
identity��AssignVariableOp�AssignVariableOp_1�BiasAdd/ReadVariableOp�GreaterEqual/ReadVariableOp�LessEqual/ReadVariableOp�MatMul/ReadVariableOp�Mul/ReadVariableOp�Mul/ReadVariableOp_1�ReadVariableOp�Sub/ReadVariableOp�'assert_greater_equal/Assert/AssertGuard�#assert_greater_equal/ReadVariableOp�cond�0polynomial_decay_pruning_schedule/ReadVariableOp^
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0	G
add/yConst*
_output_shapes
: *
dtype0	*
value	B	 RU
addAddV2ReadVariableOp:value:0add/y:output:0*
T0	*
_output_shapes
: �
AssignVariableOpAssignVariableOpreadvariableop_resourceadd:z:0^ReadVariableOp*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	*
validate_shape(7
updateNoOp^AssignVariableOp*
_output_shapes
 �
#assert_greater_equal/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp*
_output_shapes
: *
dtype0	X
assert_greater_equal/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
!assert_greater_equal/GreaterEqualGreaterEqual+assert_greater_equal/ReadVariableOp:value:0assert_greater_equal/y:output:0*
T0	*
_output_shapes
: [
assert_greater_equal/RankConst*
_output_shapes
: *
dtype0*
value	B : b
 assert_greater_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : b
 assert_greater_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
assert_greater_equal/rangeRange)assert_greater_equal/range/start:output:0"assert_greater_equal/Rank:output:0)assert_greater_equal/range/delta:output:0*
_output_shapes
: �
assert_greater_equal/AllAll%assert_greater_equal/GreaterEqual:z:0#assert_greater_equal/range:output:0*
_output_shapes
: �
!assert_greater_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*�
value�B� B�Prune() wrapper requires the UpdatePruningStep callback to be provided during training. Please add it as a callback to your model.fit call.�
#assert_greater_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:�
#assert_greater_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*=
value4B2 B,x (assert_greater_equal/ReadVariableOp:0) = �
#assert_greater_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*0
value'B% By (assert_greater_equal/y:0) = �
'assert_greater_equal/Assert/AssertGuardIf!assert_greater_equal/All:output:0!assert_greater_equal/All:output:0+assert_greater_equal/ReadVariableOp:value:0assert_greater_equal/y:output:0*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *F
else_branch7R5
3assert_greater_equal_Assert_AssertGuard_false_23088*
output_shapes
: *E
then_branch6R4
2assert_greater_equal_Assert_AssertGuard_true_23087�
0assert_greater_equal/Assert/AssertGuard/IdentityIdentity0assert_greater_equal/Assert/AssertGuard:output:0*
T0
*&
 _has_manual_control_dependencies(*
_output_shapes
: �
0polynomial_decay_pruning_schedule/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	�
'polynomial_decay_pruning_schedule/sub/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R �
%polynomial_decay_pruning_schedule/subSub8polynomial_decay_pruning_schedule/ReadVariableOp:value:00polynomial_decay_pruning_schedule/sub/y:output:0*
T0	*
_output_shapes
: �
&polynomial_decay_pruning_schedule/CastCast)polynomial_decay_pruning_schedule/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: �
+polynomial_decay_pruning_schedule/truediv/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  HB�
)polynomial_decay_pruning_schedule/truedivRealDiv*polynomial_decay_pruning_schedule/Cast:y:04polynomial_decay_pruning_schedule/truediv/y:output:0*
T0*
_output_shapes
: �
+polynomial_decay_pruning_schedule/Maximum/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *    �
)polynomial_decay_pruning_schedule/MaximumMaximum4polynomial_decay_pruning_schedule/Maximum/x:output:0-polynomial_decay_pruning_schedule/truediv:z:0*
T0*
_output_shapes
: �
+polynomial_decay_pruning_schedule/Minimum/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  �?�
)polynomial_decay_pruning_schedule/MinimumMinimum4polynomial_decay_pruning_schedule/Minimum/x:output:0-polynomial_decay_pruning_schedule/Maximum:z:0*
T0*
_output_shapes
: �
)polynomial_decay_pruning_schedule/sub_1/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  �?�
'polynomial_decay_pruning_schedule/sub_1Sub2polynomial_decay_pruning_schedule/sub_1/x:output:0-polynomial_decay_pruning_schedule/Minimum:z:0*
T0*
_output_shapes
: �
'polynomial_decay_pruning_schedule/Pow/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  @@�
%polynomial_decay_pruning_schedule/PowPow+polynomial_decay_pruning_schedule/sub_1:z:00polynomial_decay_pruning_schedule/Pow/y:output:0*
T0*
_output_shapes
: �
'polynomial_decay_pruning_schedule/Mul/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *��̾�
%polynomial_decay_pruning_schedule/MulMul0polynomial_decay_pruning_schedule/Mul/x:output:0)polynomial_decay_pruning_schedule/Pow:z:0*
T0*
_output_shapes
: �
,polynomial_decay_pruning_schedule/sparsity/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *fff?�
*polynomial_decay_pruning_schedule/sparsityAddV2)polynomial_decay_pruning_schedule/Mul:z:05polynomial_decay_pruning_schedule/sparsity/y:output:0*
T0*
_output_shapes
: �
GreaterEqual/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	�
GreaterEqual/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R {
GreaterEqualGreaterEqual#GreaterEqual/ReadVariableOp:value:0GreaterEqual/y:output:0*
T0	*
_output_shapes
: �
LessEqual/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	�
LessEqual/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R2o
	LessEqual	LessEqual LessEqual/ReadVariableOp:value:0LessEqual/y:output:0*
T0	*
_output_shapes
: {
Less/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
value	B :2{
Less/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
value	B : O
LessLessLess/x:output:0Less/y:output:0*
T0*
_output_shapes
: G
	LogicalOr	LogicalOrLessEqual:z:0Less:z:0*
_output_shapes
: Q

LogicalAnd
LogicalAndGreaterEqual:z:0LogicalOr:z:0*
_output_shapes
: �
Sub/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	z
Sub/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R W
SubSubSub/ReadVariableOp:value:0Sub/y:output:0*
T0	*
_output_shapes
: 

FloorMod/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 RdS
FloorModFloorModSub:z:0FloorMod/y:output:0*
T0	*
_output_shapes
: |
Equal/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R O
EqualEqualFloorMod:z:0Equal/y:output:0*
T0	*
_output_shapes
: M
LogicalAnd_1
LogicalAndLogicalAnd:z:0	Equal:z:0*
_output_shapes
: �
condIfLogicalAnd_1:z:0readvariableop_resourcecond_input_1cond_input_2cond_input_3LogicalAnd_1:z:0^AssignVariableOp*
Tcond0
*
Tin	
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: *$
_read_only_resource_inputs
*#
else_branchR
cond_false_23145*
output_shapes
: *"
then_branchR
cond_true_23144q
cond/IdentityIdentitycond:output:0*
T0
*&
 _has_manual_control_dependencies(*
_output_shapes
: i
update_1NoOp1^assert_greater_equal/Assert/AssertGuard/Identity^cond/Identity*
_output_shapes
 _
Mul/ReadVariableOpReadVariableOpcond_input_1*
_output_shapes

:*
dtype0h
Mul/ReadVariableOp_1ReadVariableOpcond_input_2^cond*
_output_shapes

:*
dtype0m
MulMulMul/ReadVariableOp:value:0Mul/ReadVariableOp_1:value:0*
T0*
_output_shapes

:�
AssignVariableOp_1AssignVariableOpcond_input_1Mul:z:0^Mul/ReadVariableOp^cond*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(�

group_depsNoOp^AssignVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 e
group_deps_1NoOp^group_deps",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 w
MatMul/ReadVariableOpReadVariableOpcond_input_1^AssignVariableOp_1*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^BiasAdd/ReadVariableOp^GreaterEqual/ReadVariableOp^LessEqual/ReadVariableOp^MatMul/ReadVariableOp^Mul/ReadVariableOp^Mul/ReadVariableOp_1^ReadVariableOp^Sub/ReadVariableOp(^assert_greater_equal/Assert/AssertGuard$^assert_greater_equal/ReadVariableOp^cond1^polynomial_decay_pruning_schedule/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : : : 2(
AssignVariableOp_1AssignVariableOp_12$
AssignVariableOpAssignVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2:
GreaterEqual/ReadVariableOpGreaterEqual/ReadVariableOp24
LessEqual/ReadVariableOpLessEqual/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2,
Mul/ReadVariableOp_1Mul/ReadVariableOp_12(
Mul/ReadVariableOpMul/ReadVariableOp2 
ReadVariableOpReadVariableOp2(
Sub/ReadVariableOpSub/ReadVariableOp2R
'assert_greater_equal/Assert/AssertGuard'assert_greater_equal/Assert/AssertGuard2J
#assert_greater_equal/ReadVariableOp#assert_greater_equal/ReadVariableOp2
condcond2d
0polynomial_decay_pruning_schedule/ReadVariableOp0polynomial_decay_pruning_schedule/ReadVariableOp:($
"
_user_specified_name
resource:'#
!
_user_specified_name	input_3:'#
!
_user_specified_name	input_2:'#
!
_user_specified_name	input_1:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
;__inference_prune_low_magnitude_dense_1_layer_call_fn_23277

inputs
unknown:	 
	unknown_0:
	unknown_1:
	unknown_2: 
	unknown_3:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *_
fZRX
V__inference_prune_low_magnitude_dense_1_layer_call_and_return_conditional_losses_22603o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name23273:%!

_user_specified_name23271:%!

_user_specified_name23269:%!

_user_specified_name23267:%!

_user_specified_name23265:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
T__inference_prune_low_magnitude_dense_layer_call_and_return_conditional_losses_23262

inputs-
mul_readvariableop_resource:/
mul_readvariableop_1_resource:-
biasadd_readvariableop_resource:
identity��AssignVariableOp�BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�Mul/ReadVariableOp�Mul/ReadVariableOp_1'
	no_updateNoOp*
_output_shapes
 )
no_update_1NoOp*
_output_shapes
 n
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes

:*
dtype0r
Mul/ReadVariableOp_1ReadVariableOpmul_readvariableop_1_resource*
_output_shapes

:*
dtype0m
MulMulMul/ReadVariableOp:value:0Mul/ReadVariableOp_1:value:0*
T0*
_output_shapes

:�
AssignVariableOpAssignVariableOpmul_readvariableop_resourceMul:z:0^Mul/ReadVariableOp*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(�

group_depsNoOp^AssignVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 e
group_deps_1NoOp^group_deps",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 �
MatMul/ReadVariableOpReadVariableOpmul_readvariableop_resource^AssignVariableOp*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^AssignVariableOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^Mul/ReadVariableOp^Mul/ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:���������: : : 2$
AssignVariableOpAssignVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2,
Mul/ReadVariableOp_1Mul/ReadVariableOp_12(
Mul/ReadVariableOpMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
3assert_greater_equal_Assert_AssertGuard_false_23088K
Gassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all
V
Rassert_greater_equal_assert_assertguard_assert_assert_greater_equal_readvariableop	I
Eassert_greater_equal_assert_assertguard_assert_assert_greater_equal_y	6
2assert_greater_equal_assert_assertguard_identity_1
��.assert_greater_equal/Assert/AssertGuard/Assert�
5assert_greater_equal/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*�
value�B� B�Prune() wrapper requires the UpdatePruningStep callback to be provided during training. Please add it as a callback to your model.fit call.�
5assert_greater_equal/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:�
5assert_greater_equal/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*=
value4B2 B,x (assert_greater_equal/ReadVariableOp:0) = �
5assert_greater_equal/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*0
value'B% By (assert_greater_equal/y:0) = �
.assert_greater_equal/Assert/AssertGuard/AssertAssertGassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all>assert_greater_equal/Assert/AssertGuard/Assert/data_0:output:0>assert_greater_equal/Assert/AssertGuard/Assert/data_1:output:0>assert_greater_equal/Assert/AssertGuard/Assert/data_2:output:0Rassert_greater_equal_assert_assertguard_assert_assert_greater_equal_readvariableop>assert_greater_equal/Assert/AssertGuard/Assert/data_4:output:0Eassert_greater_equal_assert_assertguard_assert_assert_greater_equal_y*
T

2		*&
 _has_manual_control_dependencies(*
_output_shapes
 �
0assert_greater_equal/Assert/AssertGuard/IdentityIdentityGassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all/^assert_greater_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: �
2assert_greater_equal/Assert/AssertGuard/Identity_1Identity9assert_greater_equal/Assert/AssertGuard/Identity:output:0-^assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: {
,assert_greater_equal/Assert/AssertGuard/NoOpNoOp/^assert_greater_equal/Assert/AssertGuard/Assert*
_output_shapes
 "q
2assert_greater_equal_assert_assertguard_identity_1;assert_greater_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2`
.assert_greater_equal/Assert/AssertGuard/Assert.assert_greater_equal/Assert/AssertGuard/Assert:NJ

_output_shapes
: 
0
_user_specified_nameassert_greater_equal/y:[W

_output_shapes
: 
=
_user_specified_name%#assert_greater_equal/ReadVariableOp:P L

_output_shapes
: 
2
_user_specified_nameassert_greater_equal/All
�
�
cond_false_22501
cond_placeholder
cond_placeholder_1
cond_placeholder_2
cond_placeholder_3
cond_identity_logicaland_1

cond_identity_1
O
	cond/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 b
cond/IdentityIdentitycond_identity_logicaland_1
^cond/NoOp*
T0
*
_output_shapes
: T
cond/Identity_1Identitycond/Identity:output:0*
T0
*
_output_shapes
: "+
cond_identity_1cond/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : :D@

_output_shapes
: 
&
_user_specified_nameLogicalAnd_1
�X
�
cond_true_22690H
>cond_polynomial_decay_pruning_schedule_readvariableop_resource:	 >
,cond_pruning_ops_abs_readvariableop_resource:0
cond_assignvariableop_resource:*
 cond_assignvariableop_1_resource: 
cond_identity_logicaland_1

cond_identity_1
��cond/AssignVariableOp�cond/AssignVariableOp_1� cond/GreaterEqual/ReadVariableOp�cond/LessEqual/ReadVariableOp�cond/Sub/ReadVariableOp�5cond/polynomial_decay_pruning_schedule/ReadVariableOp�#cond/pruning_ops/Abs/ReadVariableOp�
5cond/polynomial_decay_pruning_schedule/ReadVariableOpReadVariableOp>cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	n
,cond/polynomial_decay_pruning_schedule/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
*cond/polynomial_decay_pruning_schedule/subSub=cond/polynomial_decay_pruning_schedule/ReadVariableOp:value:05cond/polynomial_decay_pruning_schedule/sub/y:output:0*
T0	*
_output_shapes
: �
+cond/polynomial_decay_pruning_schedule/CastCast.cond/polynomial_decay_pruning_schedule/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: u
0cond/polynomial_decay_pruning_schedule/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  HB�
.cond/polynomial_decay_pruning_schedule/truedivRealDiv/cond/polynomial_decay_pruning_schedule/Cast:y:09cond/polynomial_decay_pruning_schedule/truediv/y:output:0*
T0*
_output_shapes
: u
0cond/polynomial_decay_pruning_schedule/Maximum/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
.cond/polynomial_decay_pruning_schedule/MaximumMaximum9cond/polynomial_decay_pruning_schedule/Maximum/x:output:02cond/polynomial_decay_pruning_schedule/truediv:z:0*
T0*
_output_shapes
: u
0cond/polynomial_decay_pruning_schedule/Minimum/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
.cond/polynomial_decay_pruning_schedule/MinimumMinimum9cond/polynomial_decay_pruning_schedule/Minimum/x:output:02cond/polynomial_decay_pruning_schedule/Maximum:z:0*
T0*
_output_shapes
: s
.cond/polynomial_decay_pruning_schedule/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
,cond/polynomial_decay_pruning_schedule/sub_1Sub7cond/polynomial_decay_pruning_schedule/sub_1/x:output:02cond/polynomial_decay_pruning_schedule/Minimum:z:0*
T0*
_output_shapes
: q
,cond/polynomial_decay_pruning_schedule/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@�
*cond/polynomial_decay_pruning_schedule/PowPow0cond/polynomial_decay_pruning_schedule/sub_1:z:05cond/polynomial_decay_pruning_schedule/Pow/y:output:0*
T0*
_output_shapes
: q
,cond/polynomial_decay_pruning_schedule/Mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��̾�
*cond/polynomial_decay_pruning_schedule/MulMul5cond/polynomial_decay_pruning_schedule/Mul/x:output:0.cond/polynomial_decay_pruning_schedule/Pow:z:0*
T0*
_output_shapes
: v
1cond/polynomial_decay_pruning_schedule/sparsity/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?�
/cond/polynomial_decay_pruning_schedule/sparsityAddV2.cond/polynomial_decay_pruning_schedule/Mul:z:0:cond/polynomial_decay_pruning_schedule/sparsity/y:output:0*
T0*
_output_shapes
: �
 cond/GreaterEqual/ReadVariableOpReadVariableOp>cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	U
cond/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
cond/GreaterEqualGreaterEqual(cond/GreaterEqual/ReadVariableOp:value:0cond/GreaterEqual/y:output:0*
T0	*
_output_shapes
: �
cond/LessEqual/ReadVariableOpReadVariableOp>cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	R
cond/LessEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R2~
cond/LessEqual	LessEqual%cond/LessEqual/ReadVariableOp:value:0cond/LessEqual/y:output:0*
T0	*
_output_shapes
: M
cond/Less/xConst*
_output_shapes
: *
dtype0*
value	B :2M
cond/Less/yConst*
_output_shapes
: *
dtype0*
value	B : ^
	cond/LessLesscond/Less/x:output:0cond/Less/y:output:0*
T0*
_output_shapes
: V
cond/LogicalOr	LogicalOrcond/LessEqual:z:0cond/Less:z:0*
_output_shapes
: `
cond/LogicalAnd
LogicalAndcond/GreaterEqual:z:0cond/LogicalOr:z:0*
_output_shapes
: �
cond/Sub/ReadVariableOpReadVariableOp>cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	L

cond/Sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R f
cond/SubSubcond/Sub/ReadVariableOp:value:0cond/Sub/y:output:0*
T0	*
_output_shapes
: Q
cond/FloorMod/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rdb
cond/FloorModFloorModcond/Sub:z:0cond/FloorMod/y:output:0*
T0	*
_output_shapes
: N
cond/Equal/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ^

cond/EqualEqualcond/FloorMod:z:0cond/Equal/y:output:0*
T0	*
_output_shapes
: \
cond/LogicalAnd_1
LogicalAndcond/LogicalAnd:z:0cond/Equal:z:0*
_output_shapes
: �
#cond/pruning_ops/Abs/ReadVariableOpReadVariableOp,cond_pruning_ops_abs_readvariableop_resource*
_output_shapes

:*
dtype0q
cond/pruning_ops/AbsAbs+cond/pruning_ops/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:W
cond/pruning_ops/SizeConst*
_output_shapes
: *
dtype0*
value	B :m
cond/pruning_ops/CastCastcond/pruning_ops/Size:output:0*

DstT0*

SrcT0*
_output_shapes
: [
cond/pruning_ops/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
cond/pruning_ops/subSubcond/pruning_ops/sub/x:output:03cond/polynomial_decay_pruning_schedule/sparsity:z:0*
T0*
_output_shapes
: q
cond/pruning_ops/mulMulcond/pruning_ops/Cast:y:0cond/pruning_ops/sub:z:0*
T0*
_output_shapes
: Z
cond/pruning_ops/RoundRoundcond/pruning_ops/mul:z:0*
T0*
_output_shapes
: _
cond/pruning_ops/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
cond/pruning_ops/MaximumMaximumcond/pruning_ops/Round:y:0#cond/pruning_ops/Maximum/y:output:0*
T0*
_output_shapes
: m
cond/pruning_ops/Cast_1Castcond/pruning_ops/Maximum:z:0*

DstT0*

SrcT0*
_output_shapes
: q
cond/pruning_ops/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
cond/pruning_ops/ReshapeReshapecond/pruning_ops/Abs:y:0'cond/pruning_ops/Reshape/shape:output:0*
T0*
_output_shapes
:Y
cond/pruning_ops/Size_1Const*
_output_shapes
: *
dtype0*
value	B :�
cond/pruning_ops/TopKV2TopKV2!cond/pruning_ops/Reshape:output:0 cond/pruning_ops/Size_1:output:0*
T0* 
_output_shapes
::Z
cond/pruning_ops/sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :~
cond/pruning_ops/sub_1Subcond/pruning_ops/Cast_1:y:0!cond/pruning_ops/sub_1/y:output:0*
T0*
_output_shapes
: `
cond/pruning_ops/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
cond/pruning_ops/GatherV2GatherV2 cond/pruning_ops/TopKV2:values:0cond/pruning_ops/sub_1:z:0'cond/pruning_ops/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: Z
cond/pruning_ops/sub_2/yConst*
_output_shapes
: *
dtype0*
value	B :~
cond/pruning_ops/sub_2Subcond/pruning_ops/Cast_1:y:0!cond/pruning_ops/sub_2/y:output:0*
T0*
_output_shapes
: b
 cond/pruning_ops/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
cond/pruning_ops/GatherV2_1GatherV2!cond/pruning_ops/TopKV2:indices:0cond/pruning_ops/sub_2:z:0)cond/pruning_ops/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: �
cond/pruning_ops/GreaterEqualGreaterEqualcond/pruning_ops/Abs:y:0"cond/pruning_ops/GatherV2:output:0*
T0*
_output_shapes

:Y
cond/pruning_ops/Size_2Const*
_output_shapes
: *
dtype0*
value	B :`
cond/pruning_ops/one_hot/ConstConst*
_output_shapes
: *
dtype0
*
value	B
 Zb
 cond/pruning_ops/one_hot/Const_1Const*
_output_shapes
: *
dtype0
*
value	B
 Z �
cond/pruning_ops/one_hotOneHot$cond/pruning_ops/GatherV2_1:output:0 cond/pruning_ops/Size_2:output:0'cond/pruning_ops/one_hot/Const:output:0)cond/pruning_ops/one_hot/Const_1:output:0*
TI0*
T0
*
_output_shapes
:q
 cond/pruning_ops/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
cond/pruning_ops/Reshape_1Reshape!cond/pruning_ops/one_hot:output:0)cond/pruning_ops/Reshape_1/shape:output:0*
T0
*
_output_shapes

:�
cond/pruning_ops/LogicalOr	LogicalOr!cond/pruning_ops/GreaterEqual:z:0#cond/pruning_ops/Reshape_1:output:0*
_output_shapes

:i
	cond/CastCastcond/pruning_ops/LogicalOr:z:0*

DstT0*

SrcT0
*
_output_shapes

:�
cond/AssignVariableOpAssignVariableOpcond_assignvariableop_resourcecond/Cast:y:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(�
cond/AssignVariableOp_1AssignVariableOp cond_assignvariableop_1_resource"cond/pruning_ops/GatherV2:output:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(�
cond/group_depsNoOp^cond/AssignVariableOp^cond/AssignVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 h
cond/IdentityIdentitycond_identity_logicaland_1^cond/group_deps*
T0
*
_output_shapes
: `
cond/Identity_1Identitycond/Identity:output:0
^cond/NoOp*
T0
*
_output_shapes
: �
	cond/NoOpNoOp^cond/AssignVariableOp^cond/AssignVariableOp_1!^cond/GreaterEqual/ReadVariableOp^cond/LessEqual/ReadVariableOp^cond/Sub/ReadVariableOp6^cond/polynomial_decay_pruning_schedule/ReadVariableOp$^cond/pruning_ops/Abs/ReadVariableOp*
_output_shapes
 "+
cond_identity_1cond/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : 22
cond/AssignVariableOp_1cond/AssignVariableOp_12.
cond/AssignVariableOpcond/AssignVariableOp2D
 cond/GreaterEqual/ReadVariableOp cond/GreaterEqual/ReadVariableOp2>
cond/LessEqual/ReadVariableOpcond/LessEqual/ReadVariableOp22
cond/Sub/ReadVariableOpcond/Sub/ReadVariableOp2n
5cond/polynomial_decay_pruning_schedule/ReadVariableOp5cond/polynomial_decay_pruning_schedule/ReadVariableOp2J
#cond/pruning_ops/Abs/ReadVariableOp#cond/pruning_ops/Abs/ReadVariableOp:D@

_output_shapes
: 
&
_user_specified_nameLogicalAnd_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:( $
"
_user_specified_name
resource
� 
�
E__inference_sequential_layer_call_and_return_conditional_losses_22806
dense_input)
prune_low_magnitude_dense_22414:	 1
prune_low_magnitude_dense_22416:1
prune_low_magnitude_dense_22418:)
prune_low_magnitude_dense_22420: -
prune_low_magnitude_dense_22422:+
!prune_low_magnitude_dense_1_22604:	 3
!prune_low_magnitude_dense_1_22606:3
!prune_low_magnitude_dense_1_22608:+
!prune_low_magnitude_dense_1_22610: /
!prune_low_magnitude_dense_1_22612:+
!prune_low_magnitude_dense_2_22794:	 3
!prune_low_magnitude_dense_2_22796:3
!prune_low_magnitude_dense_2_22798:+
!prune_low_magnitude_dense_2_22800: /
!prune_low_magnitude_dense_2_22802:
identity��1prune_low_magnitude_dense/StatefulPartitionedCall�3prune_low_magnitude_dense_1/StatefulPartitionedCall�3prune_low_magnitude_dense_2/StatefulPartitionedCall�
1prune_low_magnitude_dense/StatefulPartitionedCallStatefulPartitionedCalldense_inputprune_low_magnitude_dense_22414prune_low_magnitude_dense_22416prune_low_magnitude_dense_22418prune_low_magnitude_dense_22420prune_low_magnitude_dense_22422*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_prune_low_magnitude_dense_layer_call_and_return_conditional_losses_22413�
3prune_low_magnitude_dense_1/StatefulPartitionedCallStatefulPartitionedCall:prune_low_magnitude_dense/StatefulPartitionedCall:output:0!prune_low_magnitude_dense_1_22604!prune_low_magnitude_dense_1_22606!prune_low_magnitude_dense_1_22608!prune_low_magnitude_dense_1_22610!prune_low_magnitude_dense_1_22612*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *_
fZRX
V__inference_prune_low_magnitude_dense_1_layer_call_and_return_conditional_losses_22603�
3prune_low_magnitude_dense_2/StatefulPartitionedCallStatefulPartitionedCall<prune_low_magnitude_dense_1/StatefulPartitionedCall:output:0!prune_low_magnitude_dense_2_22794!prune_low_magnitude_dense_2_22796!prune_low_magnitude_dense_2_22798!prune_low_magnitude_dense_2_22800!prune_low_magnitude_dense_2_22802*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *_
fZRX
V__inference_prune_low_magnitude_dense_2_layer_call_and_return_conditional_losses_22793�
IdentityIdentity<prune_low_magnitude_dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp2^prune_low_magnitude_dense/StatefulPartitionedCall4^prune_low_magnitude_dense_1/StatefulPartitionedCall4^prune_low_magnitude_dense_2/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:���������: : : : : : : : : : : : : : : 2f
1prune_low_magnitude_dense/StatefulPartitionedCall1prune_low_magnitude_dense/StatefulPartitionedCall2j
3prune_low_magnitude_dense_1/StatefulPartitionedCall3prune_low_magnitude_dense_1/StatefulPartitionedCall2j
3prune_low_magnitude_dense_2/StatefulPartitionedCall3prune_low_magnitude_dense_2/StatefulPartitionedCall:%!

_user_specified_name22802:%!

_user_specified_name22800:%!

_user_specified_name22798:%!

_user_specified_name22796:%!

_user_specified_name22794:%
!

_user_specified_name22612:%	!

_user_specified_name22610:%!

_user_specified_name22608:%!

_user_specified_name22606:%!

_user_specified_name22604:%!

_user_specified_name22422:%!

_user_specified_name22420:%!

_user_specified_name22418:%!

_user_specified_name22416:%!

_user_specified_name22414:T P
'
_output_shapes
:���������
%
_user_specified_namedense_input
�
�
*__inference_sequential_layer_call_fn_22934
dense_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_22876o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:���������: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%	!

_user_specified_name22930:%!

_user_specified_name22928:%!

_user_specified_name22926:%!

_user_specified_name22924:%!

_user_specified_name22922:%!

_user_specified_name22920:%!

_user_specified_name22918:%!

_user_specified_name22916:%!

_user_specified_name22914:T P
'
_output_shapes
:���������
%
_user_specified_namedense_input
�`
�
V__inference_prune_low_magnitude_dense_1_layer_call_and_return_conditional_losses_22603

inputs!
readvariableop_resource:	 
cond_input_1:
cond_input_2:
cond_input_3: -
biasadd_readvariableop_resource:
identity��AssignVariableOp�AssignVariableOp_1�BiasAdd/ReadVariableOp�GreaterEqual/ReadVariableOp�LessEqual/ReadVariableOp�MatMul/ReadVariableOp�Mul/ReadVariableOp�Mul/ReadVariableOp_1�ReadVariableOp�Sub/ReadVariableOp�'assert_greater_equal/Assert/AssertGuard�#assert_greater_equal/ReadVariableOp�cond�0polynomial_decay_pruning_schedule/ReadVariableOp^
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0	G
add/yConst*
_output_shapes
: *
dtype0	*
value	B	 RU
addAddV2ReadVariableOp:value:0add/y:output:0*
T0	*
_output_shapes
: �
AssignVariableOpAssignVariableOpreadvariableop_resourceadd:z:0^ReadVariableOp*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	*
validate_shape(7
updateNoOp^AssignVariableOp*
_output_shapes
 �
#assert_greater_equal/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp*
_output_shapes
: *
dtype0	X
assert_greater_equal/yConst*
_output_shapes
: *
dtype0	*
value	B	 R�
!assert_greater_equal/GreaterEqualGreaterEqual+assert_greater_equal/ReadVariableOp:value:0assert_greater_equal/y:output:0*
T0	*
_output_shapes
: [
assert_greater_equal/RankConst*
_output_shapes
: *
dtype0*
value	B : b
 assert_greater_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : b
 assert_greater_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
assert_greater_equal/rangeRange)assert_greater_equal/range/start:output:0"assert_greater_equal/Rank:output:0)assert_greater_equal/range/delta:output:0*
_output_shapes
: �
assert_greater_equal/AllAll%assert_greater_equal/GreaterEqual:z:0#assert_greater_equal/range:output:0*
_output_shapes
: �
!assert_greater_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*�
value�B� B�Prune() wrapper requires the UpdatePruningStep callback to be provided during training. Please add it as a callback to your model.fit call.�
#assert_greater_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:�
#assert_greater_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*=
value4B2 B,x (assert_greater_equal/ReadVariableOp:0) = �
#assert_greater_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*0
value'B% By (assert_greater_equal/y:0) = �
'assert_greater_equal/Assert/AssertGuardIf!assert_greater_equal/All:output:0!assert_greater_equal/All:output:0+assert_greater_equal/ReadVariableOp:value:0assert_greater_equal/y:output:0*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *F
else_branch7R5
3assert_greater_equal_Assert_AssertGuard_false_22444*
output_shapes
: *E
then_branch6R4
2assert_greater_equal_Assert_AssertGuard_true_22443�
0assert_greater_equal/Assert/AssertGuard/IdentityIdentity0assert_greater_equal/Assert/AssertGuard:output:0*
T0
*&
 _has_manual_control_dependencies(*
_output_shapes
: �
0polynomial_decay_pruning_schedule/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	�
'polynomial_decay_pruning_schedule/sub/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R �
%polynomial_decay_pruning_schedule/subSub8polynomial_decay_pruning_schedule/ReadVariableOp:value:00polynomial_decay_pruning_schedule/sub/y:output:0*
T0	*
_output_shapes
: �
&polynomial_decay_pruning_schedule/CastCast)polynomial_decay_pruning_schedule/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: �
+polynomial_decay_pruning_schedule/truediv/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  HB�
)polynomial_decay_pruning_schedule/truedivRealDiv*polynomial_decay_pruning_schedule/Cast:y:04polynomial_decay_pruning_schedule/truediv/y:output:0*
T0*
_output_shapes
: �
+polynomial_decay_pruning_schedule/Maximum/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *    �
)polynomial_decay_pruning_schedule/MaximumMaximum4polynomial_decay_pruning_schedule/Maximum/x:output:0-polynomial_decay_pruning_schedule/truediv:z:0*
T0*
_output_shapes
: �
+polynomial_decay_pruning_schedule/Minimum/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  �?�
)polynomial_decay_pruning_schedule/MinimumMinimum4polynomial_decay_pruning_schedule/Minimum/x:output:0-polynomial_decay_pruning_schedule/Maximum:z:0*
T0*
_output_shapes
: �
)polynomial_decay_pruning_schedule/sub_1/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  �?�
'polynomial_decay_pruning_schedule/sub_1Sub2polynomial_decay_pruning_schedule/sub_1/x:output:0-polynomial_decay_pruning_schedule/Minimum:z:0*
T0*
_output_shapes
: �
'polynomial_decay_pruning_schedule/Pow/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *  @@�
%polynomial_decay_pruning_schedule/PowPow+polynomial_decay_pruning_schedule/sub_1:z:00polynomial_decay_pruning_schedule/Pow/y:output:0*
T0*
_output_shapes
: �
'polynomial_decay_pruning_schedule/Mul/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *��̾�
%polynomial_decay_pruning_schedule/MulMul0polynomial_decay_pruning_schedule/Mul/x:output:0)polynomial_decay_pruning_schedule/Pow:z:0*
T0*
_output_shapes
: �
,polynomial_decay_pruning_schedule/sparsity/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
valueB
 *fff?�
*polynomial_decay_pruning_schedule/sparsityAddV2)polynomial_decay_pruning_schedule/Mul:z:05polynomial_decay_pruning_schedule/sparsity/y:output:0*
T0*
_output_shapes
: �
GreaterEqual/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	�
GreaterEqual/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R {
GreaterEqualGreaterEqual#GreaterEqual/ReadVariableOp:value:0GreaterEqual/y:output:0*
T0	*
_output_shapes
: �
LessEqual/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	�
LessEqual/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R2o
	LessEqual	LessEqual LessEqual/ReadVariableOp:value:0LessEqual/y:output:0*
T0	*
_output_shapes
: {
Less/xConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
value	B :2{
Less/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
value	B : O
LessLessLess/x:output:0Less/y:output:0*
T0*
_output_shapes
: G
	LogicalOr	LogicalOrLessEqual:z:0Less:z:0*
_output_shapes
: Q

LogicalAnd
LogicalAndGreaterEqual:z:0LogicalOr:z:0*
_output_shapes
: �
Sub/ReadVariableOpReadVariableOpreadvariableop_resource^AssignVariableOp1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	z
Sub/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R W
SubSubSub/ReadVariableOp:value:0Sub/y:output:0*
T0	*
_output_shapes
: 

FloorMod/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 RdS
FloorModFloorModSub:z:0FloorMod/y:output:0*
T0	*
_output_shapes
: |
Equal/yConst1^assert_greater_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R O
EqualEqualFloorMod:z:0Equal/y:output:0*
T0	*
_output_shapes
: M
LogicalAnd_1
LogicalAndLogicalAnd:z:0	Equal:z:0*
_output_shapes
: �
condIfLogicalAnd_1:z:0readvariableop_resourcecond_input_1cond_input_2cond_input_3LogicalAnd_1:z:0^AssignVariableOp*
Tcond0
*
Tin	
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: *$
_read_only_resource_inputs
*#
else_branchR
cond_false_22501*
output_shapes
: *"
then_branchR
cond_true_22500q
cond/IdentityIdentitycond:output:0*
T0
*&
 _has_manual_control_dependencies(*
_output_shapes
: i
update_1NoOp1^assert_greater_equal/Assert/AssertGuard/Identity^cond/Identity*
_output_shapes
 _
Mul/ReadVariableOpReadVariableOpcond_input_1*
_output_shapes

:*
dtype0h
Mul/ReadVariableOp_1ReadVariableOpcond_input_2^cond*
_output_shapes

:*
dtype0m
MulMulMul/ReadVariableOp:value:0Mul/ReadVariableOp_1:value:0*
T0*
_output_shapes

:�
AssignVariableOp_1AssignVariableOpcond_input_1Mul:z:0^Mul/ReadVariableOp^cond*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(�

group_depsNoOp^AssignVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 e
group_deps_1NoOp^group_deps",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 w
MatMul/ReadVariableOpReadVariableOpcond_input_1^AssignVariableOp_1*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^BiasAdd/ReadVariableOp^GreaterEqual/ReadVariableOp^LessEqual/ReadVariableOp^MatMul/ReadVariableOp^Mul/ReadVariableOp^Mul/ReadVariableOp_1^ReadVariableOp^Sub/ReadVariableOp(^assert_greater_equal/Assert/AssertGuard$^assert_greater_equal/ReadVariableOp^cond1^polynomial_decay_pruning_schedule/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : : : 2(
AssignVariableOp_1AssignVariableOp_12$
AssignVariableOpAssignVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2:
GreaterEqual/ReadVariableOpGreaterEqual/ReadVariableOp24
LessEqual/ReadVariableOpLessEqual/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2,
Mul/ReadVariableOp_1Mul/ReadVariableOp_12(
Mul/ReadVariableOpMul/ReadVariableOp2 
ReadVariableOpReadVariableOp2(
Sub/ReadVariableOpSub/ReadVariableOp2R
'assert_greater_equal/Assert/AssertGuard'assert_greater_equal/Assert/AssertGuard2J
#assert_greater_equal/ReadVariableOp#assert_greater_equal/ReadVariableOp2
condcond2d
0polynomial_decay_pruning_schedule/ReadVariableOp0polynomial_decay_pruning_schedule/ReadVariableOp:($
"
_user_specified_name
resource:'#
!
_user_specified_name	input_3:'#
!
_user_specified_name	input_2:'#
!
_user_specified_name	input_1:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
3assert_greater_equal_Assert_AssertGuard_false_23528K
Gassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all
V
Rassert_greater_equal_assert_assertguard_assert_assert_greater_equal_readvariableop	I
Eassert_greater_equal_assert_assertguard_assert_assert_greater_equal_y	6
2assert_greater_equal_assert_assertguard_identity_1
��.assert_greater_equal/Assert/AssertGuard/Assert�
5assert_greater_equal/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*�
value�B� B�Prune() wrapper requires the UpdatePruningStep callback to be provided during training. Please add it as a callback to your model.fit call.�
5assert_greater_equal/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:�
5assert_greater_equal/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*=
value4B2 B,x (assert_greater_equal/ReadVariableOp:0) = �
5assert_greater_equal/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*0
value'B% By (assert_greater_equal/y:0) = �
.assert_greater_equal/Assert/AssertGuard/AssertAssertGassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all>assert_greater_equal/Assert/AssertGuard/Assert/data_0:output:0>assert_greater_equal/Assert/AssertGuard/Assert/data_1:output:0>assert_greater_equal/Assert/AssertGuard/Assert/data_2:output:0Rassert_greater_equal_assert_assertguard_assert_assert_greater_equal_readvariableop>assert_greater_equal/Assert/AssertGuard/Assert/data_4:output:0Eassert_greater_equal_assert_assertguard_assert_assert_greater_equal_y*
T

2		*&
 _has_manual_control_dependencies(*
_output_shapes
 �
0assert_greater_equal/Assert/AssertGuard/IdentityIdentityGassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all/^assert_greater_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: �
2assert_greater_equal/Assert/AssertGuard/Identity_1Identity9assert_greater_equal/Assert/AssertGuard/Identity:output:0-^assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: {
,assert_greater_equal/Assert/AssertGuard/NoOpNoOp/^assert_greater_equal/Assert/AssertGuard/Assert*
_output_shapes
 "q
2assert_greater_equal_assert_assertguard_identity_1;assert_greater_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2`
.assert_greater_equal/Assert/AssertGuard/Assert.assert_greater_equal/Assert/AssertGuard/Assert:NJ

_output_shapes
: 
0
_user_specified_nameassert_greater_equal/y:[W

_output_shapes
: 
=
_user_specified_name%#assert_greater_equal/ReadVariableOp:P L

_output_shapes
: 
2
_user_specified_nameassert_greater_equal/All
�
� 
__inference__traced_save_23940
file_prefixG
5read_disablecopyonread_prune_low_magnitude_dense_mask:F
<read_1_disablecopyonread_prune_low_magnitude_dense_threshold: I
?read_2_disablecopyonread_prune_low_magnitude_dense_pruning_step:	 K
9read_3_disablecopyonread_prune_low_magnitude_dense_1_mask:H
>read_4_disablecopyonread_prune_low_magnitude_dense_1_threshold: K
Aread_5_disablecopyonread_prune_low_magnitude_dense_1_pruning_step:	 K
9read_6_disablecopyonread_prune_low_magnitude_dense_2_mask:H
>read_7_disablecopyonread_prune_low_magnitude_dense_2_threshold: K
Aread_8_disablecopyonread_prune_low_magnitude_dense_2_pruning_step:	 7
%read_9_disablecopyonread_dense_kernel:2
$read_10_disablecopyonread_dense_bias::
(read_11_disablecopyonread_dense_1_kernel:4
&read_12_disablecopyonread_dense_1_bias::
(read_13_disablecopyonread_dense_2_kernel:4
&read_14_disablecopyonread_dense_2_bias:-
#read_15_disablecopyonread_adam_iter:	 /
%read_16_disablecopyonread_adam_beta_1: /
%read_17_disablecopyonread_adam_beta_2: .
$read_18_disablecopyonread_adam_decay: 6
,read_19_disablecopyonread_adam_learning_rate: +
!read_20_disablecopyonread_total_1: +
!read_21_disablecopyonread_count_1: )
read_22_disablecopyonread_total: )
read_23_disablecopyonread_count: ?
-read_24_disablecopyonread_adam_dense_kernel_m:9
+read_25_disablecopyonread_adam_dense_bias_m:A
/read_26_disablecopyonread_adam_dense_1_kernel_m:;
-read_27_disablecopyonread_adam_dense_1_bias_m:A
/read_28_disablecopyonread_adam_dense_2_kernel_m:;
-read_29_disablecopyonread_adam_dense_2_bias_m:?
-read_30_disablecopyonread_adam_dense_kernel_v:9
+read_31_disablecopyonread_adam_dense_bias_v:A
/read_32_disablecopyonread_adam_dense_1_kernel_v:;
-read_33_disablecopyonread_adam_dense_1_bias_v:A
/read_34_disablecopyonread_adam_dense_2_kernel_v:;
-read_35_disablecopyonread_adam_dense_2_bias_v:
savev2_const
identity_73��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
Read/DisableCopyOnReadDisableCopyOnRead5read_disablecopyonread_prune_low_magnitude_dense_mask"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp5read_disablecopyonread_prune_low_magnitude_dense_mask^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:a

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_1/DisableCopyOnReadDisableCopyOnRead<read_1_disablecopyonread_prune_low_magnitude_dense_threshold"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp<read_1_disablecopyonread_prune_low_magnitude_dense_threshold^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0e

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: [

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_2/DisableCopyOnReadDisableCopyOnRead?read_2_disablecopyonread_prune_low_magnitude_dense_pruning_step"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp?read_2_disablecopyonread_prune_low_magnitude_dense_pruning_step^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	e

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: [

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0	*
_output_shapes
: �
Read_3/DisableCopyOnReadDisableCopyOnRead9read_3_disablecopyonread_prune_low_magnitude_dense_1_mask"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp9read_3_disablecopyonread_prune_low_magnitude_dense_1_mask^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0m

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:c

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_4/DisableCopyOnReadDisableCopyOnRead>read_4_disablecopyonread_prune_low_magnitude_dense_1_threshold"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp>read_4_disablecopyonread_prune_low_magnitude_dense_1_threshold^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0e

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: [

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_5/DisableCopyOnReadDisableCopyOnReadAread_5_disablecopyonread_prune_low_magnitude_dense_1_pruning_step"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOpAread_5_disablecopyonread_prune_low_magnitude_dense_1_pruning_step^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	f
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0	*
_output_shapes
: �
Read_6/DisableCopyOnReadDisableCopyOnRead9read_6_disablecopyonread_prune_low_magnitude_dense_2_mask"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp9read_6_disablecopyonread_prune_low_magnitude_dense_2_mask^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0n
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_7/DisableCopyOnReadDisableCopyOnRead>read_7_disablecopyonread_prune_low_magnitude_dense_2_threshold"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp>read_7_disablecopyonread_prune_low_magnitude_dense_2_threshold^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_8/DisableCopyOnReadDisableCopyOnReadAread_8_disablecopyonread_prune_low_magnitude_dense_2_pruning_step"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOpAread_8_disablecopyonread_prune_low_magnitude_dense_2_pruning_step^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	f
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0	*
_output_shapes
: y
Read_9/DisableCopyOnReadDisableCopyOnRead%read_9_disablecopyonread_dense_kernel"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp%read_9_disablecopyonread_dense_kernel^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0n
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes

:y
Read_10/DisableCopyOnReadDisableCopyOnRead$read_10_disablecopyonread_dense_bias"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp$read_10_disablecopyonread_dense_bias^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_11/DisableCopyOnReadDisableCopyOnRead(read_11_disablecopyonread_dense_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp(read_11_disablecopyonread_dense_1_kernel^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes

:{
Read_12/DisableCopyOnReadDisableCopyOnRead&read_12_disablecopyonread_dense_1_bias"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp&read_12_disablecopyonread_dense_1_bias^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_13/DisableCopyOnReadDisableCopyOnRead(read_13_disablecopyonread_dense_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp(read_13_disablecopyonread_dense_2_kernel^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes

:{
Read_14/DisableCopyOnReadDisableCopyOnRead&read_14_disablecopyonread_dense_2_bias"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp&read_14_disablecopyonread_dense_2_bias^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_15/DisableCopyOnReadDisableCopyOnRead#read_15_disablecopyonread_adam_iter"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp#read_15_disablecopyonread_adam_iter^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_16/DisableCopyOnReadDisableCopyOnRead%read_16_disablecopyonread_adam_beta_1"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp%read_16_disablecopyonread_adam_beta_1^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
: z
Read_17/DisableCopyOnReadDisableCopyOnRead%read_17_disablecopyonread_adam_beta_2"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp%read_17_disablecopyonread_adam_beta_2^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
: y
Read_18/DisableCopyOnReadDisableCopyOnRead$read_18_disablecopyonread_adam_decay"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp$read_18_disablecopyonread_adam_decay^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_19/DisableCopyOnReadDisableCopyOnRead,read_19_disablecopyonread_adam_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp,read_19_disablecopyonread_adam_learning_rate^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_20/DisableCopyOnReadDisableCopyOnRead!read_20_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp!read_20_disablecopyonread_total_1^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_21/DisableCopyOnReadDisableCopyOnRead!read_21_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp!read_21_disablecopyonread_count_1^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_22/DisableCopyOnReadDisableCopyOnReadread_22_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOpread_22_disablecopyonread_total^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_23/DisableCopyOnReadDisableCopyOnReadread_23_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOpread_23_disablecopyonread_count^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_24/DisableCopyOnReadDisableCopyOnRead-read_24_disablecopyonread_adam_dense_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp-read_24_disablecopyonread_adam_dense_kernel_m^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_25/DisableCopyOnReadDisableCopyOnRead+read_25_disablecopyonread_adam_dense_bias_m"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp+read_25_disablecopyonread_adam_dense_bias_m^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_26/DisableCopyOnReadDisableCopyOnRead/read_26_disablecopyonread_adam_dense_1_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp/read_26_disablecopyonread_adam_dense_1_kernel_m^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_27/DisableCopyOnReadDisableCopyOnRead-read_27_disablecopyonread_adam_dense_1_bias_m"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp-read_27_disablecopyonread_adam_dense_1_bias_m^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_28/DisableCopyOnReadDisableCopyOnRead/read_28_disablecopyonread_adam_dense_2_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp/read_28_disablecopyonread_adam_dense_2_kernel_m^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_29/DisableCopyOnReadDisableCopyOnRead-read_29_disablecopyonread_adam_dense_2_bias_m"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp-read_29_disablecopyonread_adam_dense_2_bias_m^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_30/DisableCopyOnReadDisableCopyOnRead-read_30_disablecopyonread_adam_dense_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp-read_30_disablecopyonread_adam_dense_kernel_v^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_31/DisableCopyOnReadDisableCopyOnRead+read_31_disablecopyonread_adam_dense_bias_v"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp+read_31_disablecopyonread_adam_dense_bias_v^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_32/DisableCopyOnReadDisableCopyOnRead/read_32_disablecopyonread_adam_dense_1_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp/read_32_disablecopyonread_adam_dense_1_kernel_v^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_33/DisableCopyOnReadDisableCopyOnRead-read_33_disablecopyonread_adam_dense_1_bias_v"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp-read_33_disablecopyonread_adam_dense_1_bias_v^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_34/DisableCopyOnReadDisableCopyOnRead/read_34_disablecopyonread_adam_dense_2_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp/read_34_disablecopyonread_adam_dense_2_kernel_v^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_35/DisableCopyOnReadDisableCopyOnRead-read_35_disablecopyonread_adam_dense_2_bias_v"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp-read_35_disablecopyonread_adam_dense_2_bias_v^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
:�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*�
value�B�%B4layer_with_weights-0/mask/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-0/threshold/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-0/pruning_step/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/mask/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/threshold/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-1/pruning_step/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/mask/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-2/threshold/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-2/pruning_step/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *3
dtypes)
'2%				�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_72Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_73IdentityIdentity_72:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_73Identity_73:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=%9

_output_shapes
: 

_user_specified_nameConst:3$/
-
_user_specified_nameAdam/dense_2/bias/v:5#1
/
_user_specified_nameAdam/dense_2/kernel/v:3"/
-
_user_specified_nameAdam/dense_1/bias/v:5!1
/
_user_specified_nameAdam/dense_1/kernel/v:1 -
+
_user_specified_nameAdam/dense/bias/v:3/
-
_user_specified_nameAdam/dense/kernel/v:3/
-
_user_specified_nameAdam/dense_2/bias/m:51
/
_user_specified_nameAdam/dense_2/kernel/m:3/
-
_user_specified_nameAdam/dense_1/bias/m:51
/
_user_specified_nameAdam/dense_1/kernel/m:1-
+
_user_specified_nameAdam/dense/bias/m:3/
-
_user_specified_nameAdam/dense/kernel/m:%!

_user_specified_namecount:%!

_user_specified_nametotal:'#
!
_user_specified_name	count_1:'#
!
_user_specified_name	total_1:2.
,
_user_specified_nameAdam/learning_rate:*&
$
_user_specified_name
Adam/decay:+'
%
_user_specified_nameAdam/beta_2:+'
%
_user_specified_nameAdam/beta_1:)%
#
_user_specified_name	Adam/iter:,(
&
_user_specified_namedense_2/bias:.*
(
_user_specified_namedense_2/kernel:,(
&
_user_specified_namedense_1/bias:.*
(
_user_specified_namedense_1/kernel:*&
$
_user_specified_name
dense/bias:,
(
&
_user_specified_namedense/kernel:H	D
B
_user_specified_name*(prune_low_magnitude_dense_2/pruning_step:EA
?
_user_specified_name'%prune_low_magnitude_dense_2/threshold:@<
:
_user_specified_name" prune_low_magnitude_dense_2/mask:HD
B
_user_specified_name*(prune_low_magnitude_dense_1/pruning_step:EA
?
_user_specified_name'%prune_low_magnitude_dense_1/threshold:@<
:
_user_specified_name" prune_low_magnitude_dense_1/mask:FB
@
_user_specified_name(&prune_low_magnitude_dense/pruning_step:C?
=
_user_specified_name%#prune_low_magnitude_dense/threshold:>:
8
_user_specified_name prune_low_magnitude_dense/mask:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�e
�
 __inference__wrapped_model_22232
dense_inputR
@sequential_prune_low_magnitude_dense_mul_readvariableop_resource:T
Bsequential_prune_low_magnitude_dense_mul_readvariableop_1_resource:R
Dsequential_prune_low_magnitude_dense_biasadd_readvariableop_resource:T
Bsequential_prune_low_magnitude_dense_1_mul_readvariableop_resource:V
Dsequential_prune_low_magnitude_dense_1_mul_readvariableop_1_resource:T
Fsequential_prune_low_magnitude_dense_1_biasadd_readvariableop_resource:T
Bsequential_prune_low_magnitude_dense_2_mul_readvariableop_resource:V
Dsequential_prune_low_magnitude_dense_2_mul_readvariableop_1_resource:T
Fsequential_prune_low_magnitude_dense_2_biasadd_readvariableop_resource:
identity��5sequential/prune_low_magnitude_dense/AssignVariableOp�;sequential/prune_low_magnitude_dense/BiasAdd/ReadVariableOp�:sequential/prune_low_magnitude_dense/MatMul/ReadVariableOp�7sequential/prune_low_magnitude_dense/Mul/ReadVariableOp�9sequential/prune_low_magnitude_dense/Mul/ReadVariableOp_1�7sequential/prune_low_magnitude_dense_1/AssignVariableOp�=sequential/prune_low_magnitude_dense_1/BiasAdd/ReadVariableOp�<sequential/prune_low_magnitude_dense_1/MatMul/ReadVariableOp�9sequential/prune_low_magnitude_dense_1/Mul/ReadVariableOp�;sequential/prune_low_magnitude_dense_1/Mul/ReadVariableOp_1�7sequential/prune_low_magnitude_dense_2/AssignVariableOp�=sequential/prune_low_magnitude_dense_2/BiasAdd/ReadVariableOp�<sequential/prune_low_magnitude_dense_2/MatMul/ReadVariableOp�9sequential/prune_low_magnitude_dense_2/Mul/ReadVariableOp�;sequential/prune_low_magnitude_dense_2/Mul/ReadVariableOp_1L
.sequential/prune_low_magnitude_dense/no_updateNoOp*
_output_shapes
 N
0sequential/prune_low_magnitude_dense/no_update_1NoOp*
_output_shapes
 �
7sequential/prune_low_magnitude_dense/Mul/ReadVariableOpReadVariableOp@sequential_prune_low_magnitude_dense_mul_readvariableop_resource*
_output_shapes

:*
dtype0�
9sequential/prune_low_magnitude_dense/Mul/ReadVariableOp_1ReadVariableOpBsequential_prune_low_magnitude_dense_mul_readvariableop_1_resource*
_output_shapes

:*
dtype0�
(sequential/prune_low_magnitude_dense/MulMul?sequential/prune_low_magnitude_dense/Mul/ReadVariableOp:value:0Asequential/prune_low_magnitude_dense/Mul/ReadVariableOp_1:value:0*
T0*
_output_shapes

:�
5sequential/prune_low_magnitude_dense/AssignVariableOpAssignVariableOp@sequential_prune_low_magnitude_dense_mul_readvariableop_resource,sequential/prune_low_magnitude_dense/Mul:z:08^sequential/prune_low_magnitude_dense/Mul/ReadVariableOp*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(�
/sequential/prune_low_magnitude_dense/group_depsNoOp6^sequential/prune_low_magnitude_dense/AssignVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
1sequential/prune_low_magnitude_dense/group_deps_1NoOp0^sequential/prune_low_magnitude_dense/group_deps",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 �
:sequential/prune_low_magnitude_dense/MatMul/ReadVariableOpReadVariableOp@sequential_prune_low_magnitude_dense_mul_readvariableop_resource6^sequential/prune_low_magnitude_dense/AssignVariableOp*
_output_shapes

:*
dtype0�
+sequential/prune_low_magnitude_dense/MatMulMatMuldense_inputBsequential/prune_low_magnitude_dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
;sequential/prune_low_magnitude_dense/BiasAdd/ReadVariableOpReadVariableOpDsequential_prune_low_magnitude_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
,sequential/prune_low_magnitude_dense/BiasAddBiasAdd5sequential/prune_low_magnitude_dense/MatMul:product:0Csequential/prune_low_magnitude_dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
)sequential/prune_low_magnitude_dense/ReluRelu5sequential/prune_low_magnitude_dense/BiasAdd:output:0*
T0*'
_output_shapes
:���������N
0sequential/prune_low_magnitude_dense_1/no_updateNoOp*
_output_shapes
 P
2sequential/prune_low_magnitude_dense_1/no_update_1NoOp*
_output_shapes
 �
9sequential/prune_low_magnitude_dense_1/Mul/ReadVariableOpReadVariableOpBsequential_prune_low_magnitude_dense_1_mul_readvariableop_resource*
_output_shapes

:*
dtype0�
;sequential/prune_low_magnitude_dense_1/Mul/ReadVariableOp_1ReadVariableOpDsequential_prune_low_magnitude_dense_1_mul_readvariableop_1_resource*
_output_shapes

:*
dtype0�
*sequential/prune_low_magnitude_dense_1/MulMulAsequential/prune_low_magnitude_dense_1/Mul/ReadVariableOp:value:0Csequential/prune_low_magnitude_dense_1/Mul/ReadVariableOp_1:value:0*
T0*
_output_shapes

:�
7sequential/prune_low_magnitude_dense_1/AssignVariableOpAssignVariableOpBsequential_prune_low_magnitude_dense_1_mul_readvariableop_resource.sequential/prune_low_magnitude_dense_1/Mul:z:0:^sequential/prune_low_magnitude_dense_1/Mul/ReadVariableOp*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(�
1sequential/prune_low_magnitude_dense_1/group_depsNoOp8^sequential/prune_low_magnitude_dense_1/AssignVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
3sequential/prune_low_magnitude_dense_1/group_deps_1NoOp2^sequential/prune_low_magnitude_dense_1/group_deps",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 �
<sequential/prune_low_magnitude_dense_1/MatMul/ReadVariableOpReadVariableOpBsequential_prune_low_magnitude_dense_1_mul_readvariableop_resource8^sequential/prune_low_magnitude_dense_1/AssignVariableOp*
_output_shapes

:*
dtype0�
-sequential/prune_low_magnitude_dense_1/MatMulMatMul7sequential/prune_low_magnitude_dense/Relu:activations:0Dsequential/prune_low_magnitude_dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
=sequential/prune_low_magnitude_dense_1/BiasAdd/ReadVariableOpReadVariableOpFsequential_prune_low_magnitude_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
.sequential/prune_low_magnitude_dense_1/BiasAddBiasAdd7sequential/prune_low_magnitude_dense_1/MatMul:product:0Esequential/prune_low_magnitude_dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
.sequential/prune_low_magnitude_dense_1/SoftmaxSoftmax7sequential/prune_low_magnitude_dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������N
0sequential/prune_low_magnitude_dense_2/no_updateNoOp*
_output_shapes
 P
2sequential/prune_low_magnitude_dense_2/no_update_1NoOp*
_output_shapes
 �
9sequential/prune_low_magnitude_dense_2/Mul/ReadVariableOpReadVariableOpBsequential_prune_low_magnitude_dense_2_mul_readvariableop_resource*
_output_shapes

:*
dtype0�
;sequential/prune_low_magnitude_dense_2/Mul/ReadVariableOp_1ReadVariableOpDsequential_prune_low_magnitude_dense_2_mul_readvariableop_1_resource*
_output_shapes

:*
dtype0�
*sequential/prune_low_magnitude_dense_2/MulMulAsequential/prune_low_magnitude_dense_2/Mul/ReadVariableOp:value:0Csequential/prune_low_magnitude_dense_2/Mul/ReadVariableOp_1:value:0*
T0*
_output_shapes

:�
7sequential/prune_low_magnitude_dense_2/AssignVariableOpAssignVariableOpBsequential_prune_low_magnitude_dense_2_mul_readvariableop_resource.sequential/prune_low_magnitude_dense_2/Mul:z:0:^sequential/prune_low_magnitude_dense_2/Mul/ReadVariableOp*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(�
1sequential/prune_low_magnitude_dense_2/group_depsNoOp8^sequential/prune_low_magnitude_dense_2/AssignVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
3sequential/prune_low_magnitude_dense_2/group_deps_1NoOp2^sequential/prune_low_magnitude_dense_2/group_deps",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 �
<sequential/prune_low_magnitude_dense_2/MatMul/ReadVariableOpReadVariableOpBsequential_prune_low_magnitude_dense_2_mul_readvariableop_resource8^sequential/prune_low_magnitude_dense_2/AssignVariableOp*
_output_shapes

:*
dtype0�
-sequential/prune_low_magnitude_dense_2/MatMulMatMul8sequential/prune_low_magnitude_dense_1/Softmax:softmax:0Dsequential/prune_low_magnitude_dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
=sequential/prune_low_magnitude_dense_2/BiasAdd/ReadVariableOpReadVariableOpFsequential_prune_low_magnitude_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
.sequential/prune_low_magnitude_dense_2/BiasAddBiasAdd7sequential/prune_low_magnitude_dense_2/MatMul:product:0Esequential/prune_low_magnitude_dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
.sequential/prune_low_magnitude_dense_2/SoftmaxSoftmax7sequential/prune_low_magnitude_dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:����������
IdentityIdentity8sequential/prune_low_magnitude_dense_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp6^sequential/prune_low_magnitude_dense/AssignVariableOp<^sequential/prune_low_magnitude_dense/BiasAdd/ReadVariableOp;^sequential/prune_low_magnitude_dense/MatMul/ReadVariableOp8^sequential/prune_low_magnitude_dense/Mul/ReadVariableOp:^sequential/prune_low_magnitude_dense/Mul/ReadVariableOp_18^sequential/prune_low_magnitude_dense_1/AssignVariableOp>^sequential/prune_low_magnitude_dense_1/BiasAdd/ReadVariableOp=^sequential/prune_low_magnitude_dense_1/MatMul/ReadVariableOp:^sequential/prune_low_magnitude_dense_1/Mul/ReadVariableOp<^sequential/prune_low_magnitude_dense_1/Mul/ReadVariableOp_18^sequential/prune_low_magnitude_dense_2/AssignVariableOp>^sequential/prune_low_magnitude_dense_2/BiasAdd/ReadVariableOp=^sequential/prune_low_magnitude_dense_2/MatMul/ReadVariableOp:^sequential/prune_low_magnitude_dense_2/Mul/ReadVariableOp<^sequential/prune_low_magnitude_dense_2/Mul/ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:���������: : : : : : : : : 2n
5sequential/prune_low_magnitude_dense/AssignVariableOp5sequential/prune_low_magnitude_dense/AssignVariableOp2z
;sequential/prune_low_magnitude_dense/BiasAdd/ReadVariableOp;sequential/prune_low_magnitude_dense/BiasAdd/ReadVariableOp2x
:sequential/prune_low_magnitude_dense/MatMul/ReadVariableOp:sequential/prune_low_magnitude_dense/MatMul/ReadVariableOp2v
9sequential/prune_low_magnitude_dense/Mul/ReadVariableOp_19sequential/prune_low_magnitude_dense/Mul/ReadVariableOp_12r
7sequential/prune_low_magnitude_dense/Mul/ReadVariableOp7sequential/prune_low_magnitude_dense/Mul/ReadVariableOp2r
7sequential/prune_low_magnitude_dense_1/AssignVariableOp7sequential/prune_low_magnitude_dense_1/AssignVariableOp2~
=sequential/prune_low_magnitude_dense_1/BiasAdd/ReadVariableOp=sequential/prune_low_magnitude_dense_1/BiasAdd/ReadVariableOp2|
<sequential/prune_low_magnitude_dense_1/MatMul/ReadVariableOp<sequential/prune_low_magnitude_dense_1/MatMul/ReadVariableOp2z
;sequential/prune_low_magnitude_dense_1/Mul/ReadVariableOp_1;sequential/prune_low_magnitude_dense_1/Mul/ReadVariableOp_12v
9sequential/prune_low_magnitude_dense_1/Mul/ReadVariableOp9sequential/prune_low_magnitude_dense_1/Mul/ReadVariableOp2r
7sequential/prune_low_magnitude_dense_2/AssignVariableOp7sequential/prune_low_magnitude_dense_2/AssignVariableOp2~
=sequential/prune_low_magnitude_dense_2/BiasAdd/ReadVariableOp=sequential/prune_low_magnitude_dense_2/BiasAdd/ReadVariableOp2|
<sequential/prune_low_magnitude_dense_2/MatMul/ReadVariableOp<sequential/prune_low_magnitude_dense_2/MatMul/ReadVariableOp2z
;sequential/prune_low_magnitude_dense_2/Mul/ReadVariableOp_1;sequential/prune_low_magnitude_dense_2/Mul/ReadVariableOp_12v
9sequential/prune_low_magnitude_dense_2/Mul/ReadVariableOp9sequential/prune_low_magnitude_dense_2/Mul/ReadVariableOp:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:T P
'
_output_shapes
:���������
%
_user_specified_namedense_input
��
�
!__inference__traced_restore_24057
file_prefixA
/assignvariableop_prune_low_magnitude_dense_mask:@
6assignvariableop_1_prune_low_magnitude_dense_threshold: C
9assignvariableop_2_prune_low_magnitude_dense_pruning_step:	 E
3assignvariableop_3_prune_low_magnitude_dense_1_mask:B
8assignvariableop_4_prune_low_magnitude_dense_1_threshold: E
;assignvariableop_5_prune_low_magnitude_dense_1_pruning_step:	 E
3assignvariableop_6_prune_low_magnitude_dense_2_mask:B
8assignvariableop_7_prune_low_magnitude_dense_2_threshold: E
;assignvariableop_8_prune_low_magnitude_dense_2_pruning_step:	 1
assignvariableop_9_dense_kernel:,
assignvariableop_10_dense_bias:4
"assignvariableop_11_dense_1_kernel:.
 assignvariableop_12_dense_1_bias:4
"assignvariableop_13_dense_2_kernel:.
 assignvariableop_14_dense_2_bias:'
assignvariableop_15_adam_iter:	 )
assignvariableop_16_adam_beta_1: )
assignvariableop_17_adam_beta_2: (
assignvariableop_18_adam_decay: 0
&assignvariableop_19_adam_learning_rate: %
assignvariableop_20_total_1: %
assignvariableop_21_count_1: #
assignvariableop_22_total: #
assignvariableop_23_count: 9
'assignvariableop_24_adam_dense_kernel_m:3
%assignvariableop_25_adam_dense_bias_m:;
)assignvariableop_26_adam_dense_1_kernel_m:5
'assignvariableop_27_adam_dense_1_bias_m:;
)assignvariableop_28_adam_dense_2_kernel_m:5
'assignvariableop_29_adam_dense_2_bias_m:9
'assignvariableop_30_adam_dense_kernel_v:3
%assignvariableop_31_adam_dense_bias_v:;
)assignvariableop_32_adam_dense_1_kernel_v:5
'assignvariableop_33_adam_dense_1_bias_v:;
)assignvariableop_34_adam_dense_2_kernel_v:5
'assignvariableop_35_adam_dense_2_bias_v:
identity_37��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*�
value�B�%B4layer_with_weights-0/mask/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-0/threshold/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-0/pruning_step/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/mask/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-1/threshold/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-1/pruning_step/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/mask/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-2/threshold/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-2/pruning_step/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::*3
dtypes)
'2%				[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp/assignvariableop_prune_low_magnitude_dense_maskIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp6assignvariableop_1_prune_low_magnitude_dense_thresholdIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp9assignvariableop_2_prune_low_magnitude_dense_pruning_stepIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp3assignvariableop_3_prune_low_magnitude_dense_1_maskIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp8assignvariableop_4_prune_low_magnitude_dense_1_thresholdIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp;assignvariableop_5_prune_low_magnitude_dense_1_pruning_stepIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp3assignvariableop_6_prune_low_magnitude_dense_2_maskIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp8assignvariableop_7_prune_low_magnitude_dense_2_thresholdIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp;assignvariableop_8_prune_low_magnitude_dense_2_pruning_stepIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_dense_biasIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp"assignvariableop_11_dense_1_kernelIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp assignvariableop_12_dense_1_biasIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp"assignvariableop_13_dense_2_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp assignvariableop_14_dense_2_biasIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_iterIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_beta_1Identity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_beta_2Identity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_decayIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp&assignvariableop_19_adam_learning_rateIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpassignvariableop_20_total_1Identity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpassignvariableop_21_count_1Identity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpassignvariableop_22_totalIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpassignvariableop_23_countIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_kernel_mIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp%assignvariableop_25_adam_dense_bias_mIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_dense_1_kernel_mIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp'assignvariableop_27_adam_dense_1_bias_mIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_dense_2_kernel_mIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp'assignvariableop_29_adam_dense_2_bias_mIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp'assignvariableop_30_adam_dense_kernel_vIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp%assignvariableop_31_adam_dense_bias_vIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_dense_1_kernel_vIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp'assignvariableop_33_adam_dense_1_bias_vIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_dense_2_kernel_vIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp'assignvariableop_35_adam_dense_2_bias_vIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_36Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_37IdentityIdentity_36:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_37Identity_37:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:3$/
-
_user_specified_nameAdam/dense_2/bias/v:5#1
/
_user_specified_nameAdam/dense_2/kernel/v:3"/
-
_user_specified_nameAdam/dense_1/bias/v:5!1
/
_user_specified_nameAdam/dense_1/kernel/v:1 -
+
_user_specified_nameAdam/dense/bias/v:3/
-
_user_specified_nameAdam/dense/kernel/v:3/
-
_user_specified_nameAdam/dense_2/bias/m:51
/
_user_specified_nameAdam/dense_2/kernel/m:3/
-
_user_specified_nameAdam/dense_1/bias/m:51
/
_user_specified_nameAdam/dense_1/kernel/m:1-
+
_user_specified_nameAdam/dense/bias/m:3/
-
_user_specified_nameAdam/dense/kernel/m:%!

_user_specified_namecount:%!

_user_specified_nametotal:'#
!
_user_specified_name	count_1:'#
!
_user_specified_name	total_1:2.
,
_user_specified_nameAdam/learning_rate:*&
$
_user_specified_name
Adam/decay:+'
%
_user_specified_nameAdam/beta_2:+'
%
_user_specified_nameAdam/beta_1:)%
#
_user_specified_name	Adam/iter:,(
&
_user_specified_namedense_2/bias:.*
(
_user_specified_namedense_2/kernel:,(
&
_user_specified_namedense_1/bias:.*
(
_user_specified_namedense_1/kernel:*&
$
_user_specified_name
dense/bias:,
(
&
_user_specified_namedense/kernel:H	D
B
_user_specified_name*(prune_low_magnitude_dense_2/pruning_step:EA
?
_user_specified_name'%prune_low_magnitude_dense_2/threshold:@<
:
_user_specified_name" prune_low_magnitude_dense_2/mask:HD
B
_user_specified_name*(prune_low_magnitude_dense_1/pruning_step:EA
?
_user_specified_name'%prune_low_magnitude_dense_1/threshold:@<
:
_user_specified_name" prune_low_magnitude_dense_1/mask:FB
@
_user_specified_name(&prune_low_magnitude_dense/pruning_step:C?
=
_user_specified_name%#prune_low_magnitude_dense/threshold:>:
8
_user_specified_name prune_low_magnitude_dense/mask:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
cond_false_23365
cond_placeholder
cond_placeholder_1
cond_placeholder_2
cond_placeholder_3
cond_identity_logicaland_1

cond_identity_1
O
	cond/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 b
cond/IdentityIdentitycond_identity_logicaland_1
^cond/NoOp*
T0
*
_output_shapes
: T
cond/Identity_1Identitycond/Identity:output:0*
T0
*
_output_shapes
: "+
cond_identity_1cond/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : :D@

_output_shapes
: 
&
_user_specified_nameLogicalAnd_1
�
�
cond_false_22311
cond_placeholder
cond_placeholder_1
cond_placeholder_2
cond_placeholder_3
cond_identity_logicaland_1

cond_identity_1
O
	cond/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 b
cond/IdentityIdentitycond_identity_logicaland_1
^cond/NoOp*
T0
*
_output_shapes
: T
cond/Identity_1Identitycond/Identity:output:0*
T0
*
_output_shapes
: "+
cond_identity_1cond/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : :D@

_output_shapes
: 
&
_user_specified_nameLogicalAnd_1
�
�
3assert_greater_equal_Assert_AssertGuard_false_22254K
Gassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all
V
Rassert_greater_equal_assert_assertguard_assert_assert_greater_equal_readvariableop	I
Eassert_greater_equal_assert_assertguard_assert_assert_greater_equal_y	6
2assert_greater_equal_assert_assertguard_identity_1
��.assert_greater_equal/Assert/AssertGuard/Assert�
5assert_greater_equal/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*�
value�B� B�Prune() wrapper requires the UpdatePruningStep callback to be provided during training. Please add it as a callback to your model.fit call.�
5assert_greater_equal/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:�
5assert_greater_equal/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*=
value4B2 B,x (assert_greater_equal/ReadVariableOp:0) = �
5assert_greater_equal/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*0
value'B% By (assert_greater_equal/y:0) = �
.assert_greater_equal/Assert/AssertGuard/AssertAssertGassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all>assert_greater_equal/Assert/AssertGuard/Assert/data_0:output:0>assert_greater_equal/Assert/AssertGuard/Assert/data_1:output:0>assert_greater_equal/Assert/AssertGuard/Assert/data_2:output:0Rassert_greater_equal_assert_assertguard_assert_assert_greater_equal_readvariableop>assert_greater_equal/Assert/AssertGuard/Assert/data_4:output:0Eassert_greater_equal_assert_assertguard_assert_assert_greater_equal_y*
T

2		*&
 _has_manual_control_dependencies(*
_output_shapes
 �
0assert_greater_equal/Assert/AssertGuard/IdentityIdentityGassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all/^assert_greater_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: �
2assert_greater_equal/Assert/AssertGuard/Identity_1Identity9assert_greater_equal/Assert/AssertGuard/Identity:output:0-^assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: {
,assert_greater_equal/Assert/AssertGuard/NoOpNoOp/^assert_greater_equal/Assert/AssertGuard/Assert*
_output_shapes
 "q
2assert_greater_equal_assert_assertguard_identity_1;assert_greater_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2`
.assert_greater_equal/Assert/AssertGuard/Assert.assert_greater_equal/Assert/AssertGuard/Assert:NJ

_output_shapes
: 
0
_user_specified_nameassert_greater_equal/y:[W

_output_shapes
: 
=
_user_specified_name%#assert_greater_equal/ReadVariableOp:P L

_output_shapes
: 
2
_user_specified_nameassert_greater_equal/All
�
�
;__inference_prune_low_magnitude_dense_1_layer_call_fn_23288

inputs
unknown:
	unknown_0:
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *_
fZRX
V__inference_prune_low_magnitude_dense_1_layer_call_and_return_conditional_losses_22845o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name23284:%!

_user_specified_name23282:%!

_user_specified_name23280:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�X
�
cond_true_22310H
>cond_polynomial_decay_pruning_schedule_readvariableop_resource:	 >
,cond_pruning_ops_abs_readvariableop_resource:0
cond_assignvariableop_resource:*
 cond_assignvariableop_1_resource: 
cond_identity_logicaland_1

cond_identity_1
��cond/AssignVariableOp�cond/AssignVariableOp_1� cond/GreaterEqual/ReadVariableOp�cond/LessEqual/ReadVariableOp�cond/Sub/ReadVariableOp�5cond/polynomial_decay_pruning_schedule/ReadVariableOp�#cond/pruning_ops/Abs/ReadVariableOp�
5cond/polynomial_decay_pruning_schedule/ReadVariableOpReadVariableOp>cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	n
,cond/polynomial_decay_pruning_schedule/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
*cond/polynomial_decay_pruning_schedule/subSub=cond/polynomial_decay_pruning_schedule/ReadVariableOp:value:05cond/polynomial_decay_pruning_schedule/sub/y:output:0*
T0	*
_output_shapes
: �
+cond/polynomial_decay_pruning_schedule/CastCast.cond/polynomial_decay_pruning_schedule/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: u
0cond/polynomial_decay_pruning_schedule/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  HB�
.cond/polynomial_decay_pruning_schedule/truedivRealDiv/cond/polynomial_decay_pruning_schedule/Cast:y:09cond/polynomial_decay_pruning_schedule/truediv/y:output:0*
T0*
_output_shapes
: u
0cond/polynomial_decay_pruning_schedule/Maximum/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
.cond/polynomial_decay_pruning_schedule/MaximumMaximum9cond/polynomial_decay_pruning_schedule/Maximum/x:output:02cond/polynomial_decay_pruning_schedule/truediv:z:0*
T0*
_output_shapes
: u
0cond/polynomial_decay_pruning_schedule/Minimum/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
.cond/polynomial_decay_pruning_schedule/MinimumMinimum9cond/polynomial_decay_pruning_schedule/Minimum/x:output:02cond/polynomial_decay_pruning_schedule/Maximum:z:0*
T0*
_output_shapes
: s
.cond/polynomial_decay_pruning_schedule/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
,cond/polynomial_decay_pruning_schedule/sub_1Sub7cond/polynomial_decay_pruning_schedule/sub_1/x:output:02cond/polynomial_decay_pruning_schedule/Minimum:z:0*
T0*
_output_shapes
: q
,cond/polynomial_decay_pruning_schedule/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@�
*cond/polynomial_decay_pruning_schedule/PowPow0cond/polynomial_decay_pruning_schedule/sub_1:z:05cond/polynomial_decay_pruning_schedule/Pow/y:output:0*
T0*
_output_shapes
: q
,cond/polynomial_decay_pruning_schedule/Mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��̾�
*cond/polynomial_decay_pruning_schedule/MulMul5cond/polynomial_decay_pruning_schedule/Mul/x:output:0.cond/polynomial_decay_pruning_schedule/Pow:z:0*
T0*
_output_shapes
: v
1cond/polynomial_decay_pruning_schedule/sparsity/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?�
/cond/polynomial_decay_pruning_schedule/sparsityAddV2.cond/polynomial_decay_pruning_schedule/Mul:z:0:cond/polynomial_decay_pruning_schedule/sparsity/y:output:0*
T0*
_output_shapes
: �
 cond/GreaterEqual/ReadVariableOpReadVariableOp>cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	U
cond/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
cond/GreaterEqualGreaterEqual(cond/GreaterEqual/ReadVariableOp:value:0cond/GreaterEqual/y:output:0*
T0	*
_output_shapes
: �
cond/LessEqual/ReadVariableOpReadVariableOp>cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	R
cond/LessEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R2~
cond/LessEqual	LessEqual%cond/LessEqual/ReadVariableOp:value:0cond/LessEqual/y:output:0*
T0	*
_output_shapes
: M
cond/Less/xConst*
_output_shapes
: *
dtype0*
value	B :2M
cond/Less/yConst*
_output_shapes
: *
dtype0*
value	B : ^
	cond/LessLesscond/Less/x:output:0cond/Less/y:output:0*
T0*
_output_shapes
: V
cond/LogicalOr	LogicalOrcond/LessEqual:z:0cond/Less:z:0*
_output_shapes
: `
cond/LogicalAnd
LogicalAndcond/GreaterEqual:z:0cond/LogicalOr:z:0*
_output_shapes
: �
cond/Sub/ReadVariableOpReadVariableOp>cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	L

cond/Sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R f
cond/SubSubcond/Sub/ReadVariableOp:value:0cond/Sub/y:output:0*
T0	*
_output_shapes
: Q
cond/FloorMod/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rdb
cond/FloorModFloorModcond/Sub:z:0cond/FloorMod/y:output:0*
T0	*
_output_shapes
: N
cond/Equal/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ^

cond/EqualEqualcond/FloorMod:z:0cond/Equal/y:output:0*
T0	*
_output_shapes
: \
cond/LogicalAnd_1
LogicalAndcond/LogicalAnd:z:0cond/Equal:z:0*
_output_shapes
: �
#cond/pruning_ops/Abs/ReadVariableOpReadVariableOp,cond_pruning_ops_abs_readvariableop_resource*
_output_shapes

:*
dtype0q
cond/pruning_ops/AbsAbs+cond/pruning_ops/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:W
cond/pruning_ops/SizeConst*
_output_shapes
: *
dtype0*
value	B : m
cond/pruning_ops/CastCastcond/pruning_ops/Size:output:0*

DstT0*

SrcT0*
_output_shapes
: [
cond/pruning_ops/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
cond/pruning_ops/subSubcond/pruning_ops/sub/x:output:03cond/polynomial_decay_pruning_schedule/sparsity:z:0*
T0*
_output_shapes
: q
cond/pruning_ops/mulMulcond/pruning_ops/Cast:y:0cond/pruning_ops/sub:z:0*
T0*
_output_shapes
: Z
cond/pruning_ops/RoundRoundcond/pruning_ops/mul:z:0*
T0*
_output_shapes
: _
cond/pruning_ops/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
cond/pruning_ops/MaximumMaximumcond/pruning_ops/Round:y:0#cond/pruning_ops/Maximum/y:output:0*
T0*
_output_shapes
: m
cond/pruning_ops/Cast_1Castcond/pruning_ops/Maximum:z:0*

DstT0*

SrcT0*
_output_shapes
: q
cond/pruning_ops/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
cond/pruning_ops/ReshapeReshapecond/pruning_ops/Abs:y:0'cond/pruning_ops/Reshape/shape:output:0*
T0*
_output_shapes
: Y
cond/pruning_ops/Size_1Const*
_output_shapes
: *
dtype0*
value	B : �
cond/pruning_ops/TopKV2TopKV2!cond/pruning_ops/Reshape:output:0 cond/pruning_ops/Size_1:output:0*
T0* 
_output_shapes
: : Z
cond/pruning_ops/sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :~
cond/pruning_ops/sub_1Subcond/pruning_ops/Cast_1:y:0!cond/pruning_ops/sub_1/y:output:0*
T0*
_output_shapes
: `
cond/pruning_ops/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
cond/pruning_ops/GatherV2GatherV2 cond/pruning_ops/TopKV2:values:0cond/pruning_ops/sub_1:z:0'cond/pruning_ops/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: Z
cond/pruning_ops/sub_2/yConst*
_output_shapes
: *
dtype0*
value	B :~
cond/pruning_ops/sub_2Subcond/pruning_ops/Cast_1:y:0!cond/pruning_ops/sub_2/y:output:0*
T0*
_output_shapes
: b
 cond/pruning_ops/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
cond/pruning_ops/GatherV2_1GatherV2!cond/pruning_ops/TopKV2:indices:0cond/pruning_ops/sub_2:z:0)cond/pruning_ops/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: �
cond/pruning_ops/GreaterEqualGreaterEqualcond/pruning_ops/Abs:y:0"cond/pruning_ops/GatherV2:output:0*
T0*
_output_shapes

:Y
cond/pruning_ops/Size_2Const*
_output_shapes
: *
dtype0*
value	B : `
cond/pruning_ops/one_hot/ConstConst*
_output_shapes
: *
dtype0
*
value	B
 Zb
 cond/pruning_ops/one_hot/Const_1Const*
_output_shapes
: *
dtype0
*
value	B
 Z �
cond/pruning_ops/one_hotOneHot$cond/pruning_ops/GatherV2_1:output:0 cond/pruning_ops/Size_2:output:0'cond/pruning_ops/one_hot/Const:output:0)cond/pruning_ops/one_hot/Const_1:output:0*
TI0*
T0
*
_output_shapes
: q
 cond/pruning_ops/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
cond/pruning_ops/Reshape_1Reshape!cond/pruning_ops/one_hot:output:0)cond/pruning_ops/Reshape_1/shape:output:0*
T0
*
_output_shapes

:�
cond/pruning_ops/LogicalOr	LogicalOr!cond/pruning_ops/GreaterEqual:z:0#cond/pruning_ops/Reshape_1:output:0*
_output_shapes

:i
	cond/CastCastcond/pruning_ops/LogicalOr:z:0*

DstT0*

SrcT0
*
_output_shapes

:�
cond/AssignVariableOpAssignVariableOpcond_assignvariableop_resourcecond/Cast:y:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(�
cond/AssignVariableOp_1AssignVariableOp cond_assignvariableop_1_resource"cond/pruning_ops/GatherV2:output:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(�
cond/group_depsNoOp^cond/AssignVariableOp^cond/AssignVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 h
cond/IdentityIdentitycond_identity_logicaland_1^cond/group_deps*
T0
*
_output_shapes
: `
cond/Identity_1Identitycond/Identity:output:0
^cond/NoOp*
T0
*
_output_shapes
: �
	cond/NoOpNoOp^cond/AssignVariableOp^cond/AssignVariableOp_1!^cond/GreaterEqual/ReadVariableOp^cond/LessEqual/ReadVariableOp^cond/Sub/ReadVariableOp6^cond/polynomial_decay_pruning_schedule/ReadVariableOp$^cond/pruning_ops/Abs/ReadVariableOp*
_output_shapes
 "+
cond_identity_1cond/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : 22
cond/AssignVariableOp_1cond/AssignVariableOp_12.
cond/AssignVariableOpcond/AssignVariableOp2D
 cond/GreaterEqual/ReadVariableOp cond/GreaterEqual/ReadVariableOp2>
cond/LessEqual/ReadVariableOpcond/LessEqual/ReadVariableOp22
cond/Sub/ReadVariableOpcond/Sub/ReadVariableOp2n
5cond/polynomial_decay_pruning_schedule/ReadVariableOp5cond/polynomial_decay_pruning_schedule/ReadVariableOp2J
#cond/pruning_ops/Abs/ReadVariableOp#cond/pruning_ops/Abs/ReadVariableOp:D@

_output_shapes
: 
&
_user_specified_nameLogicalAnd_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:( $
"
_user_specified_name
resource
�
�
cond_false_23585
cond_placeholder
cond_placeholder_1
cond_placeholder_2
cond_placeholder_3
cond_identity_logicaland_1

cond_identity_1
O
	cond/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 b
cond/IdentityIdentitycond_identity_logicaland_1
^cond/NoOp*
T0
*
_output_shapes
: T
cond/Identity_1Identitycond/Identity:output:0*
T0
*
_output_shapes
: "+
cond_identity_1cond/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : :D@

_output_shapes
: 
&
_user_specified_nameLogicalAnd_1
�X
�
cond_true_23584H
>cond_polynomial_decay_pruning_schedule_readvariableop_resource:	 >
,cond_pruning_ops_abs_readvariableop_resource:0
cond_assignvariableop_resource:*
 cond_assignvariableop_1_resource: 
cond_identity_logicaland_1

cond_identity_1
��cond/AssignVariableOp�cond/AssignVariableOp_1� cond/GreaterEqual/ReadVariableOp�cond/LessEqual/ReadVariableOp�cond/Sub/ReadVariableOp�5cond/polynomial_decay_pruning_schedule/ReadVariableOp�#cond/pruning_ops/Abs/ReadVariableOp�
5cond/polynomial_decay_pruning_schedule/ReadVariableOpReadVariableOp>cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	n
,cond/polynomial_decay_pruning_schedule/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
*cond/polynomial_decay_pruning_schedule/subSub=cond/polynomial_decay_pruning_schedule/ReadVariableOp:value:05cond/polynomial_decay_pruning_schedule/sub/y:output:0*
T0	*
_output_shapes
: �
+cond/polynomial_decay_pruning_schedule/CastCast.cond/polynomial_decay_pruning_schedule/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: u
0cond/polynomial_decay_pruning_schedule/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  HB�
.cond/polynomial_decay_pruning_schedule/truedivRealDiv/cond/polynomial_decay_pruning_schedule/Cast:y:09cond/polynomial_decay_pruning_schedule/truediv/y:output:0*
T0*
_output_shapes
: u
0cond/polynomial_decay_pruning_schedule/Maximum/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
.cond/polynomial_decay_pruning_schedule/MaximumMaximum9cond/polynomial_decay_pruning_schedule/Maximum/x:output:02cond/polynomial_decay_pruning_schedule/truediv:z:0*
T0*
_output_shapes
: u
0cond/polynomial_decay_pruning_schedule/Minimum/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
.cond/polynomial_decay_pruning_schedule/MinimumMinimum9cond/polynomial_decay_pruning_schedule/Minimum/x:output:02cond/polynomial_decay_pruning_schedule/Maximum:z:0*
T0*
_output_shapes
: s
.cond/polynomial_decay_pruning_schedule/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
,cond/polynomial_decay_pruning_schedule/sub_1Sub7cond/polynomial_decay_pruning_schedule/sub_1/x:output:02cond/polynomial_decay_pruning_schedule/Minimum:z:0*
T0*
_output_shapes
: q
,cond/polynomial_decay_pruning_schedule/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@�
*cond/polynomial_decay_pruning_schedule/PowPow0cond/polynomial_decay_pruning_schedule/sub_1:z:05cond/polynomial_decay_pruning_schedule/Pow/y:output:0*
T0*
_output_shapes
: q
,cond/polynomial_decay_pruning_schedule/Mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��̾�
*cond/polynomial_decay_pruning_schedule/MulMul5cond/polynomial_decay_pruning_schedule/Mul/x:output:0.cond/polynomial_decay_pruning_schedule/Pow:z:0*
T0*
_output_shapes
: v
1cond/polynomial_decay_pruning_schedule/sparsity/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?�
/cond/polynomial_decay_pruning_schedule/sparsityAddV2.cond/polynomial_decay_pruning_schedule/Mul:z:0:cond/polynomial_decay_pruning_schedule/sparsity/y:output:0*
T0*
_output_shapes
: �
 cond/GreaterEqual/ReadVariableOpReadVariableOp>cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	U
cond/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
cond/GreaterEqualGreaterEqual(cond/GreaterEqual/ReadVariableOp:value:0cond/GreaterEqual/y:output:0*
T0	*
_output_shapes
: �
cond/LessEqual/ReadVariableOpReadVariableOp>cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	R
cond/LessEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R2~
cond/LessEqual	LessEqual%cond/LessEqual/ReadVariableOp:value:0cond/LessEqual/y:output:0*
T0	*
_output_shapes
: M
cond/Less/xConst*
_output_shapes
: *
dtype0*
value	B :2M
cond/Less/yConst*
_output_shapes
: *
dtype0*
value	B : ^
	cond/LessLesscond/Less/x:output:0cond/Less/y:output:0*
T0*
_output_shapes
: V
cond/LogicalOr	LogicalOrcond/LessEqual:z:0cond/Less:z:0*
_output_shapes
: `
cond/LogicalAnd
LogicalAndcond/GreaterEqual:z:0cond/LogicalOr:z:0*
_output_shapes
: �
cond/Sub/ReadVariableOpReadVariableOp>cond_polynomial_decay_pruning_schedule_readvariableop_resource*
_output_shapes
: *
dtype0	L

cond/Sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R f
cond/SubSubcond/Sub/ReadVariableOp:value:0cond/Sub/y:output:0*
T0	*
_output_shapes
: Q
cond/FloorMod/yConst*
_output_shapes
: *
dtype0	*
value	B	 Rdb
cond/FloorModFloorModcond/Sub:z:0cond/FloorMod/y:output:0*
T0	*
_output_shapes
: N
cond/Equal/yConst*
_output_shapes
: *
dtype0	*
value	B	 R ^

cond/EqualEqualcond/FloorMod:z:0cond/Equal/y:output:0*
T0	*
_output_shapes
: \
cond/LogicalAnd_1
LogicalAndcond/LogicalAnd:z:0cond/Equal:z:0*
_output_shapes
: �
#cond/pruning_ops/Abs/ReadVariableOpReadVariableOp,cond_pruning_ops_abs_readvariableop_resource*
_output_shapes

:*
dtype0q
cond/pruning_ops/AbsAbs+cond/pruning_ops/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:W
cond/pruning_ops/SizeConst*
_output_shapes
: *
dtype0*
value	B :m
cond/pruning_ops/CastCastcond/pruning_ops/Size:output:0*

DstT0*

SrcT0*
_output_shapes
: [
cond/pruning_ops/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
cond/pruning_ops/subSubcond/pruning_ops/sub/x:output:03cond/polynomial_decay_pruning_schedule/sparsity:z:0*
T0*
_output_shapes
: q
cond/pruning_ops/mulMulcond/pruning_ops/Cast:y:0cond/pruning_ops/sub:z:0*
T0*
_output_shapes
: Z
cond/pruning_ops/RoundRoundcond/pruning_ops/mul:z:0*
T0*
_output_shapes
: _
cond/pruning_ops/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
cond/pruning_ops/MaximumMaximumcond/pruning_ops/Round:y:0#cond/pruning_ops/Maximum/y:output:0*
T0*
_output_shapes
: m
cond/pruning_ops/Cast_1Castcond/pruning_ops/Maximum:z:0*

DstT0*

SrcT0*
_output_shapes
: q
cond/pruning_ops/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
cond/pruning_ops/ReshapeReshapecond/pruning_ops/Abs:y:0'cond/pruning_ops/Reshape/shape:output:0*
T0*
_output_shapes
:Y
cond/pruning_ops/Size_1Const*
_output_shapes
: *
dtype0*
value	B :�
cond/pruning_ops/TopKV2TopKV2!cond/pruning_ops/Reshape:output:0 cond/pruning_ops/Size_1:output:0*
T0* 
_output_shapes
::Z
cond/pruning_ops/sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :~
cond/pruning_ops/sub_1Subcond/pruning_ops/Cast_1:y:0!cond/pruning_ops/sub_1/y:output:0*
T0*
_output_shapes
: `
cond/pruning_ops/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
cond/pruning_ops/GatherV2GatherV2 cond/pruning_ops/TopKV2:values:0cond/pruning_ops/sub_1:z:0'cond/pruning_ops/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: Z
cond/pruning_ops/sub_2/yConst*
_output_shapes
: *
dtype0*
value	B :~
cond/pruning_ops/sub_2Subcond/pruning_ops/Cast_1:y:0!cond/pruning_ops/sub_2/y:output:0*
T0*
_output_shapes
: b
 cond/pruning_ops/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
cond/pruning_ops/GatherV2_1GatherV2!cond/pruning_ops/TopKV2:indices:0cond/pruning_ops/sub_2:z:0)cond/pruning_ops/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: �
cond/pruning_ops/GreaterEqualGreaterEqualcond/pruning_ops/Abs:y:0"cond/pruning_ops/GatherV2:output:0*
T0*
_output_shapes

:Y
cond/pruning_ops/Size_2Const*
_output_shapes
: *
dtype0*
value	B :`
cond/pruning_ops/one_hot/ConstConst*
_output_shapes
: *
dtype0
*
value	B
 Zb
 cond/pruning_ops/one_hot/Const_1Const*
_output_shapes
: *
dtype0
*
value	B
 Z �
cond/pruning_ops/one_hotOneHot$cond/pruning_ops/GatherV2_1:output:0 cond/pruning_ops/Size_2:output:0'cond/pruning_ops/one_hot/Const:output:0)cond/pruning_ops/one_hot/Const_1:output:0*
TI0*
T0
*
_output_shapes
:q
 cond/pruning_ops/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      �
cond/pruning_ops/Reshape_1Reshape!cond/pruning_ops/one_hot:output:0)cond/pruning_ops/Reshape_1/shape:output:0*
T0
*
_output_shapes

:�
cond/pruning_ops/LogicalOr	LogicalOr!cond/pruning_ops/GreaterEqual:z:0#cond/pruning_ops/Reshape_1:output:0*
_output_shapes

:i
	cond/CastCastcond/pruning_ops/LogicalOr:z:0*

DstT0*

SrcT0
*
_output_shapes

:�
cond/AssignVariableOpAssignVariableOpcond_assignvariableop_resourcecond/Cast:y:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(�
cond/AssignVariableOp_1AssignVariableOp cond_assignvariableop_1_resource"cond/pruning_ops/GatherV2:output:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(�
cond/group_depsNoOp^cond/AssignVariableOp^cond/AssignVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 h
cond/IdentityIdentitycond_identity_logicaland_1^cond/group_deps*
T0
*
_output_shapes
: `
cond/Identity_1Identitycond/Identity:output:0
^cond/NoOp*
T0
*
_output_shapes
: �
	cond/NoOpNoOp^cond/AssignVariableOp^cond/AssignVariableOp_1!^cond/GreaterEqual/ReadVariableOp^cond/LessEqual/ReadVariableOp^cond/Sub/ReadVariableOp6^cond/polynomial_decay_pruning_schedule/ReadVariableOp$^cond/pruning_ops/Abs/ReadVariableOp*
_output_shapes
 "+
cond_identity_1cond/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : 22
cond/AssignVariableOp_1cond/AssignVariableOp_12.
cond/AssignVariableOpcond/AssignVariableOp2D
 cond/GreaterEqual/ReadVariableOp cond/GreaterEqual/ReadVariableOp2>
cond/LessEqual/ReadVariableOpcond/LessEqual/ReadVariableOp22
cond/Sub/ReadVariableOpcond/Sub/ReadVariableOp2n
5cond/polynomial_decay_pruning_schedule/ReadVariableOp5cond/polynomial_decay_pruning_schedule/ReadVariableOp2J
#cond/pruning_ops/Abs/ReadVariableOp#cond/pruning_ops/Abs/ReadVariableOp:D@

_output_shapes
: 
&
_user_specified_nameLogicalAnd_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:( $
"
_user_specified_name
resource
�	
�
;__inference_prune_low_magnitude_dense_2_layer_call_fn_23497

inputs
unknown:	 
	unknown_0:
	unknown_1:
	unknown_2: 
	unknown_3:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *_
fZRX
V__inference_prune_low_magnitude_dense_2_layer_call_and_return_conditional_losses_22793o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name23493:%!

_user_specified_name23491:%!

_user_specified_name23489:%!

_user_specified_name23487:%!

_user_specified_name23485:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
E__inference_sequential_layer_call_and_return_conditional_losses_22876
dense_input1
prune_low_magnitude_dense_22824:1
prune_low_magnitude_dense_22826:-
prune_low_magnitude_dense_22828:3
!prune_low_magnitude_dense_1_22846:3
!prune_low_magnitude_dense_1_22848:/
!prune_low_magnitude_dense_1_22850:3
!prune_low_magnitude_dense_2_22868:3
!prune_low_magnitude_dense_2_22870:/
!prune_low_magnitude_dense_2_22872:
identity��1prune_low_magnitude_dense/StatefulPartitionedCall�3prune_low_magnitude_dense_1/StatefulPartitionedCall�3prune_low_magnitude_dense_2/StatefulPartitionedCall�
1prune_low_magnitude_dense/StatefulPartitionedCallStatefulPartitionedCalldense_inputprune_low_magnitude_dense_22824prune_low_magnitude_dense_22826prune_low_magnitude_dense_22828*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_prune_low_magnitude_dense_layer_call_and_return_conditional_losses_22823�
3prune_low_magnitude_dense_1/StatefulPartitionedCallStatefulPartitionedCall:prune_low_magnitude_dense/StatefulPartitionedCall:output:0!prune_low_magnitude_dense_1_22846!prune_low_magnitude_dense_1_22848!prune_low_magnitude_dense_1_22850*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *_
fZRX
V__inference_prune_low_magnitude_dense_1_layer_call_and_return_conditional_losses_22845�
3prune_low_magnitude_dense_2/StatefulPartitionedCallStatefulPartitionedCall<prune_low_magnitude_dense_1/StatefulPartitionedCall:output:0!prune_low_magnitude_dense_2_22868!prune_low_magnitude_dense_2_22870!prune_low_magnitude_dense_2_22872*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *_
fZRX
V__inference_prune_low_magnitude_dense_2_layer_call_and_return_conditional_losses_22867�
IdentityIdentity<prune_low_magnitude_dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp2^prune_low_magnitude_dense/StatefulPartitionedCall4^prune_low_magnitude_dense_1/StatefulPartitionedCall4^prune_low_magnitude_dense_2/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:���������: : : : : : : : : 2f
1prune_low_magnitude_dense/StatefulPartitionedCall1prune_low_magnitude_dense/StatefulPartitionedCall2j
3prune_low_magnitude_dense_1/StatefulPartitionedCall3prune_low_magnitude_dense_1/StatefulPartitionedCall2j
3prune_low_magnitude_dense_2/StatefulPartitionedCall3prune_low_magnitude_dense_2/StatefulPartitionedCall:%	!

_user_specified_name22872:%!

_user_specified_name22870:%!

_user_specified_name22868:%!

_user_specified_name22850:%!

_user_specified_name22848:%!

_user_specified_name22846:%!

_user_specified_name22828:%!

_user_specified_name22826:%!

_user_specified_name22824:T P
'
_output_shapes
:���������
%
_user_specified_namedense_input
�
�
#__inference_signature_wrapper_23042
dense_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__wrapped_model_22232o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:���������: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%	!

_user_specified_name23038:%!

_user_specified_name23036:%!

_user_specified_name23034:%!

_user_specified_name23032:%!

_user_specified_name23030:%!

_user_specified_name23028:%!

_user_specified_name23026:%!

_user_specified_name23024:%!

_user_specified_name23022:T P
'
_output_shapes
:���������
%
_user_specified_namedense_input
�
�
2assert_greater_equal_Assert_AssertGuard_true_22443M
Iassert_greater_equal_assert_assertguard_identity_assert_greater_equal_all
7
3assert_greater_equal_assert_assertguard_placeholder	9
5assert_greater_equal_assert_assertguard_placeholder_1	6
2assert_greater_equal_assert_assertguard_identity_1
r
,assert_greater_equal/Assert/AssertGuard/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 �
0assert_greater_equal/Assert/AssertGuard/IdentityIdentityIassert_greater_equal_assert_assertguard_identity_assert_greater_equal_all-^assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: �
2assert_greater_equal/Assert/AssertGuard/Identity_1Identity9assert_greater_equal/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: "q
2assert_greater_equal_assert_assertguard_identity_1;assert_greater_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : :

_output_shapes
: :

_output_shapes
: :P L

_output_shapes
: 
2
_user_specified_nameassert_greater_equal/All
�
�
cond_false_22691
cond_placeholder
cond_placeholder_1
cond_placeholder_2
cond_placeholder_3
cond_identity_logicaland_1

cond_identity_1
O
	cond/NoOpNoOp*&
 _has_manual_control_dependencies(*
_output_shapes
 b
cond/IdentityIdentitycond_identity_logicaland_1
^cond/NoOp*
T0
*
_output_shapes
: T
cond/Identity_1Identitycond/Identity:output:0*
T0
*
_output_shapes
: "+
cond_identity_1cond/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : :D@

_output_shapes
: 
&
_user_specified_nameLogicalAnd_1
�
�
3assert_greater_equal_Assert_AssertGuard_false_22634K
Gassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all
V
Rassert_greater_equal_assert_assertguard_assert_assert_greater_equal_readvariableop	I
Eassert_greater_equal_assert_assertguard_assert_assert_greater_equal_y	6
2assert_greater_equal_assert_assertguard_identity_1
��.assert_greater_equal/Assert/AssertGuard/Assert�
5assert_greater_equal/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*�
value�B� B�Prune() wrapper requires the UpdatePruningStep callback to be provided during training. Please add it as a callback to your model.fit call.�
5assert_greater_equal/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:�
5assert_greater_equal/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*=
value4B2 B,x (assert_greater_equal/ReadVariableOp:0) = �
5assert_greater_equal/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*0
value'B% By (assert_greater_equal/y:0) = �
.assert_greater_equal/Assert/AssertGuard/AssertAssertGassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all>assert_greater_equal/Assert/AssertGuard/Assert/data_0:output:0>assert_greater_equal/Assert/AssertGuard/Assert/data_1:output:0>assert_greater_equal/Assert/AssertGuard/Assert/data_2:output:0Rassert_greater_equal_assert_assertguard_assert_assert_greater_equal_readvariableop>assert_greater_equal/Assert/AssertGuard/Assert/data_4:output:0Eassert_greater_equal_assert_assertguard_assert_assert_greater_equal_y*
T

2		*&
 _has_manual_control_dependencies(*
_output_shapes
 �
0assert_greater_equal/Assert/AssertGuard/IdentityIdentityGassert_greater_equal_assert_assertguard_assert_assert_greater_equal_all/^assert_greater_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: �
2assert_greater_equal/Assert/AssertGuard/Identity_1Identity9assert_greater_equal/Assert/AssertGuard/Identity:output:0-^assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: {
,assert_greater_equal/Assert/AssertGuard/NoOpNoOp/^assert_greater_equal/Assert/AssertGuard/Assert*
_output_shapes
 "q
2assert_greater_equal_assert_assertguard_identity_1;assert_greater_equal/Assert/AssertGuard/Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2`
.assert_greater_equal/Assert/AssertGuard/Assert.assert_greater_equal/Assert/AssertGuard/Assert:NJ

_output_shapes
: 
0
_user_specified_nameassert_greater_equal/y:[W

_output_shapes
: 
=
_user_specified_name%#assert_greater_equal/ReadVariableOp:P L

_output_shapes
: 
2
_user_specified_nameassert_greater_equal/All
�
�
V__inference_prune_low_magnitude_dense_2_layer_call_and_return_conditional_losses_23702

inputs-
mul_readvariableop_resource:/
mul_readvariableop_1_resource:-
biasadd_readvariableop_resource:
identity��AssignVariableOp�BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�Mul/ReadVariableOp�Mul/ReadVariableOp_1'
	no_updateNoOp*
_output_shapes
 )
no_update_1NoOp*
_output_shapes
 n
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes

:*
dtype0r
Mul/ReadVariableOp_1ReadVariableOpmul_readvariableop_1_resource*
_output_shapes

:*
dtype0m
MulMulMul/ReadVariableOp:value:0Mul/ReadVariableOp_1:value:0*
T0*
_output_shapes

:�
AssignVariableOpAssignVariableOpmul_readvariableop_resourceMul:z:0^Mul/ReadVariableOp*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0*
validate_shape(�

group_depsNoOp^AssignVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 e
group_deps_1NoOp^group_deps",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 �
MatMul/ReadVariableOpReadVariableOpmul_readvariableop_resource^AssignVariableOp*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^AssignVariableOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^Mul/ReadVariableOp^Mul/ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:���������: : : 2$
AssignVariableOpAssignVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2,
Mul/ReadVariableOp_1Mul/ReadVariableOp_12(
Mul/ReadVariableOpMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
C
dense_input4
serving_default_dense_input:0���������O
prune_low_magnitude_dense_20
StatefulPartitionedCall:0���������tensorflow/serving/predict:ٟ
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
pruning_vars
	layer
prunable_weights
mask
	threshold
pruning_step"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
pruning_vars
	 layer
!prunable_weights
"mask
#	threshold
$pruning_step"
_tf_keras_layer
�
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses
+pruning_vars
	,layer
-prunable_weights
.mask
/	threshold
0pruning_step"
_tf_keras_layer
�
10
21
2
3
4
35
46
"7
#8
$9
510
611
.12
/13
014"
trackable_list_wrapper
J
10
21
32
43
54
65"
trackable_list_wrapper
 "
trackable_list_wrapper
�
7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
�
<trace_0
=trace_12�
*__inference_sequential_layer_call_fn_22911
*__inference_sequential_layer_call_fn_22934�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z<trace_0z=trace_1
�
>trace_0
?trace_12�
E__inference_sequential_layer_call_and_return_conditional_losses_22806
E__inference_sequential_layer_call_and_return_conditional_losses_22876�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z>trace_0z?trace_1
�B�
 __inference__wrapped_model_22232dense_input"�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
@iter

Abeta_1

Bbeta_2
	Cdecay
Dlearning_rate1m�2m�3m�4m�5m�6m�1v�2v�3v�4v�5v�6v�"
	optimizer
,
Eserving_default"
signature_map
C
10
21
2
3
4"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Ktrace_0
Ltrace_12�
9__inference_prune_low_magnitude_dense_layer_call_fn_23057
9__inference_prune_low_magnitude_dense_layer_call_fn_23068�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkwjkwargs
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zKtrace_0zLtrace_1
�
Mtrace_0
Ntrace_12�
T__inference_prune_low_magnitude_dense_layer_call_and_return_conditional_losses_23247
T__inference_prune_low_magnitude_dense_layer_call_and_return_conditional_losses_23262�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkwjkwargs
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zMtrace_0zNtrace_1
'
O0"
trackable_list_wrapper
�
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses

1kernel
2bias"
_tf_keras_layer
'
10"
trackable_list_wrapper
0:.(2prune_low_magnitude_dense/mask
-:+ (2#prune_low_magnitude_dense/threshold
.:,	 2&prune_low_magnitude_dense/pruning_step
C
30
41
"2
#3
$4"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
[trace_0
\trace_12�
;__inference_prune_low_magnitude_dense_1_layer_call_fn_23277
;__inference_prune_low_magnitude_dense_1_layer_call_fn_23288�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkwjkwargs
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z[trace_0z\trace_1
�
]trace_0
^trace_12�
V__inference_prune_low_magnitude_dense_1_layer_call_and_return_conditional_losses_23467
V__inference_prune_low_magnitude_dense_1_layer_call_and_return_conditional_losses_23482�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkwjkwargs
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z]trace_0z^trace_1
'
_0"
trackable_list_wrapper
�
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses

3kernel
4bias"
_tf_keras_layer
'
30"
trackable_list_wrapper
2:0(2 prune_low_magnitude_dense_1/mask
/:- (2%prune_low_magnitude_dense_1/threshold
0:.	 2(prune_low_magnitude_dense_1/pruning_step
C
50
61
.2
/3
04"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
�
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
�
ktrace_0
ltrace_12�
;__inference_prune_low_magnitude_dense_2_layer_call_fn_23497
;__inference_prune_low_magnitude_dense_2_layer_call_fn_23508�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkwjkwargs
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zktrace_0zltrace_1
�
mtrace_0
ntrace_12�
V__inference_prune_low_magnitude_dense_2_layer_call_and_return_conditional_losses_23687
V__inference_prune_low_magnitude_dense_2_layer_call_and_return_conditional_losses_23702�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkwjkwargs
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zmtrace_0zntrace_1
'
o0"
trackable_list_wrapper
�
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses

5kernel
6bias"
_tf_keras_layer
'
50"
trackable_list_wrapper
2:0(2 prune_low_magnitude_dense_2/mask
/:- (2%prune_low_magnitude_dense_2/threshold
0:.	 2(prune_low_magnitude_dense_2/pruning_step
:2dense/kernel
:2
dense/bias
 :2dense_1/kernel
:2dense_1/bias
 :2dense_2/kernel
:2dense_2/bias
_
0
1
2
"3
#4
$5
.6
/7
08"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
.
v0
w1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_sequential_layer_call_fn_22911dense_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
*__inference_sequential_layer_call_fn_22934dense_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_sequential_layer_call_and_return_conditional_losses_22806dense_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_sequential_layer_call_and_return_conditional_losses_22876dense_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
�B�
#__inference_signature_wrapper_23042dense_input"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
  

kwonlyargs�
jdense_input
kwonlydefaults
 
annotations� *
 
5
0
1
2"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
9__inference_prune_low_magnitude_dense_layer_call_fn_23057inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
9__inference_prune_low_magnitude_dense_layer_call_fn_23068inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
T__inference_prune_low_magnitude_dense_layer_call_and_return_conditional_losses_23247inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
T__inference_prune_low_magnitude_dense_layer_call_and_return_conditional_losses_23262inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
6
10
1
2"
trackable_tuple_wrapper
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
�
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
5
"0
#1
$2"
trackable_list_wrapper
'
 0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
;__inference_prune_low_magnitude_dense_1_layer_call_fn_23277inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
;__inference_prune_low_magnitude_dense_1_layer_call_fn_23288inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
V__inference_prune_low_magnitude_dense_1_layer_call_and_return_conditional_losses_23467inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
V__inference_prune_low_magnitude_dense_1_layer_call_and_return_conditional_losses_23482inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
6
30
"1
#2"
trackable_tuple_wrapper
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
�
}non_trainable_variables

~layers
metrics
 �layer_regularization_losses
�layer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
5
.0
/1
02"
trackable_list_wrapper
'
,0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
;__inference_prune_low_magnitude_dense_2_layer_call_fn_23497inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
;__inference_prune_low_magnitude_dense_2_layer_call_fn_23508inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
V__inference_prune_low_magnitude_dense_2_layer_call_and_return_conditional_losses_23687inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
V__inference_prune_low_magnitude_dense_2_layer_call_and_return_conditional_losses_23702inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
6
50
.1
/2"
trackable_tuple_wrapper
.
50
61"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
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
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
#:!2Adam/dense/kernel/m
:2Adam/dense/bias/m
%:#2Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
%:#2Adam/dense_2/kernel/m
:2Adam/dense_2/bias/m
#:!2Adam/dense/kernel/v
:2Adam/dense/bias/v
%:#2Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v
%:#2Adam/dense_2/kernel/v
:2Adam/dense_2/bias/v�
 __inference__wrapped_model_22232�	123"45.64�1
*�'
%�"
dense_input���������
� "Y�V
T
prune_low_magnitude_dense_25�2
prune_low_magnitude_dense_2����������
V__inference_prune_low_magnitude_dense_1_layer_call_and_return_conditional_losses_23467j$3"#43�0
)�&
 �
inputs���������
p
� ",�)
"�
tensor_0���������
� �
V__inference_prune_low_magnitude_dense_1_layer_call_and_return_conditional_losses_23482h3"43�0
)�&
 �
inputs���������
p 
� ",�)
"�
tensor_0���������
� �
;__inference_prune_low_magnitude_dense_1_layer_call_fn_23277_$3"#43�0
)�&
 �
inputs���������
p
� "!�
unknown����������
;__inference_prune_low_magnitude_dense_1_layer_call_fn_23288]3"43�0
)�&
 �
inputs���������
p 
� "!�
unknown����������
V__inference_prune_low_magnitude_dense_2_layer_call_and_return_conditional_losses_23687j05./63�0
)�&
 �
inputs���������
p
� ",�)
"�
tensor_0���������
� �
V__inference_prune_low_magnitude_dense_2_layer_call_and_return_conditional_losses_23702h5.63�0
)�&
 �
inputs���������
p 
� ",�)
"�
tensor_0���������
� �
;__inference_prune_low_magnitude_dense_2_layer_call_fn_23497_05./63�0
)�&
 �
inputs���������
p
� "!�
unknown����������
;__inference_prune_low_magnitude_dense_2_layer_call_fn_23508]5.63�0
)�&
 �
inputs���������
p 
� "!�
unknown����������
T__inference_prune_low_magnitude_dense_layer_call_and_return_conditional_losses_23247j123�0
)�&
 �
inputs���������
p
� ",�)
"�
tensor_0���������
� �
T__inference_prune_low_magnitude_dense_layer_call_and_return_conditional_losses_23262h123�0
)�&
 �
inputs���������
p 
� ",�)
"�
tensor_0���������
� �
9__inference_prune_low_magnitude_dense_layer_call_fn_23057_123�0
)�&
 �
inputs���������
p
� "!�
unknown����������
9__inference_prune_low_magnitude_dense_layer_call_fn_23068]123�0
)�&
 �
inputs���������
p 
� "!�
unknown����������
E__inference_sequential_layer_call_and_return_conditional_losses_22806}12$3"#405./6<�9
2�/
%�"
dense_input���������
p

 
� ",�)
"�
tensor_0���������
� �
E__inference_sequential_layer_call_and_return_conditional_losses_22876w	123"45.6<�9
2�/
%�"
dense_input���������
p 

 
� ",�)
"�
tensor_0���������
� �
*__inference_sequential_layer_call_fn_22911r12$3"#405./6<�9
2�/
%�"
dense_input���������
p

 
� "!�
unknown����������
*__inference_sequential_layer_call_fn_22934l	123"45.6<�9
2�/
%�"
dense_input���������
p 

 
� "!�
unknown����������
#__inference_signature_wrapper_23042�	123"45.6C�@
� 
9�6
4
dense_input%�"
dense_input���������"Y�V
T
prune_low_magnitude_dense_25�2
prune_low_magnitude_dense_2���������