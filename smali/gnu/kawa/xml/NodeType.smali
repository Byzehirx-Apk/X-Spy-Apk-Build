.class public Lgnu/kawa/xml/NodeType;
.super Lgnu/bytecode/ObjectType;
.source "NodeType.java"

# interfaces
.implements Lgnu/expr/TypeValue;
.implements Lgnu/lists/NodePredicate;
.implements Ljava/io/Externalizable;


# static fields
.field public static final ATTRIBUTE_OK:I = 0x4

.field public static final COMMENT_OK:I = 0x10

.field public static final DOCUMENT_OK:I = 0x8

.field public static final ELEMENT_OK:I = 0x2

.field public static final PI_OK:I = 0x20

.field public static final TEXT_OK:I = 0x1

.field public static final anyNodeTest:Lgnu/kawa/xml/NodeType;

.field static final coerceMethod:Lgnu/bytecode/Method;

.field static final coerceOrNullMethod:Lgnu/bytecode/Method;

.field public static final commentNodeTest:Lgnu/kawa/xml/NodeType;

.field public static final documentNodeTest:Lgnu/kawa/xml/NodeType;

.field public static final nodeType:Lgnu/kawa/xml/NodeType;

.field public static final textNodeTest:Lgnu/kawa/xml/NodeType;

.field public static final typeKNode:Lgnu/bytecode/ClassType;

.field public static final typeNodeType:Lgnu/bytecode/ClassType;


# instance fields
.field kinds:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 184
    const-string/jumbo v0, "gnu.kawa.xml.KNode"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeType;->typeKNode:Lgnu/bytecode/ClassType;

    .line 185
    const-string/jumbo v0, "gnu.kawa.xml.NodeType"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeType;->typeNodeType:Lgnu/bytecode/ClassType;

    .line 186
    new-instance v0, Lgnu/kawa/xml/NodeType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "gnu.kawa.xml.KNode"

    invoke-direct {v1, v2}, Lgnu/kawa/xml/NodeType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/NodeType;->nodeType:Lgnu/kawa/xml/NodeType;

    .line 187
    sget-object v0, Lgnu/kawa/xml/NodeType;->typeNodeType:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "coerceForce"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeType;->coerceMethod:Lgnu/bytecode/Method;

    .line 189
    sget-object v0, Lgnu/kawa/xml/NodeType;->typeNodeType:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "coerceOrNull"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeType;->coerceOrNullMethod:Lgnu/bytecode/Method;

    .line 218
    new-instance v0, Lgnu/kawa/xml/NodeType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "document-node"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lgnu/kawa/xml/NodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/xml/NodeType;->documentNodeTest:Lgnu/kawa/xml/NodeType;

    .line 220
    new-instance v0, Lgnu/kawa/xml/NodeType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "text"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lgnu/kawa/xml/NodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/xml/NodeType;->textNodeTest:Lgnu/kawa/xml/NodeType;

    .line 222
    new-instance v0, Lgnu/kawa/xml/NodeType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "comment"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Lgnu/kawa/xml/NodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/xml/NodeType;->commentNodeTest:Lgnu/kawa/xml/NodeType;

    .line 224
    new-instance v0, Lgnu/kawa/xml/NodeType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "node"

    invoke-direct {v1, v2}, Lgnu/kawa/xml/NodeType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/NodeType;->anyNodeTest:Lgnu/kawa/xml/NodeType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/NodeType;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Lgnu/kawa/xml/NodeType;-><init>(Ljava/lang/String;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/NodeType;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "kinds":I
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lgnu/bytecode/ObjectType;-><init>(Ljava/lang/String;)V

    .line 27
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lgnu/kawa/xml/NodeType;->kinds:I

    .line 32
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lgnu/kawa/xml/NodeType;->kinds:I

    .line 33
    return-void
.end method

.method public static coerceForce(Ljava/lang/Object;I)Lgnu/kawa/xml/KNode;
    .locals 8

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    move v1, p1

    .local v1, "kinds":I
    move-object v3, v0

    move v4, v1

    invoke-static {v3, v4}, Lgnu/kawa/xml/NodeType;->coerceOrNull(Ljava/lang/Object;I)Lgnu/kawa/xml/KNode;

    move-result-object v3

    move-object v2, v3

    .line 127
    .local v2, "pos":Lgnu/kawa/xml/KNode;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 128
    new-instance v3, Ljava/lang/ClassCastException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "coerce from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 129
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "obj":Ljava/lang/Object;
    return-object v0
.end method

.method public static coerceOrNull(Ljava/lang/Object;I)Lgnu/kawa/xml/KNode;
    .locals 6

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    move v1, p1

    .local v1, "kinds":I
    move-object v3, v0

    instance-of v3, v3, Lgnu/xml/NodeTree;

    if-eqz v3, :cond_0

    .line 136
    move-object v3, v0

    check-cast v3, Lgnu/xml/NodeTree;

    invoke-static {v3}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;)Lgnu/kawa/xml/KNode;

    move-result-object v3

    move-object v2, v3

    .line 141
    .local v2, "pos":Lgnu/kawa/xml/KNode;
    :goto_0
    move-object v3, v2

    iget-object v3, v3, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    move-object v4, v2

    iget v4, v4, Lgnu/kawa/xml/KNode;->ipos:I

    move v5, v1

    invoke-static {v3, v4, v5}, Lgnu/kawa/xml/NodeType;->isInstance(Lgnu/lists/AbstractSequence;II)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v2

    :goto_1
    move-object v0, v3

    .end local v0    # "obj":Ljava/lang/Object;
    .end local v2    # "pos":Lgnu/kawa/xml/KNode;
    :goto_2
    return-object v0

    .line 137
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_0
    move-object v3, v0

    instance-of v3, v3, Lgnu/kawa/xml/KNode;

    if-eqz v3, :cond_1

    .line 138
    move-object v3, v0

    check-cast v3, Lgnu/kawa/xml/KNode;

    move-object v2, v3

    .restart local v2    # "pos":Lgnu/kawa/xml/KNode;
    goto :goto_0

    .line 140
    .end local v2    # "pos":Lgnu/kawa/xml/KNode;
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_2

    .line 141
    .restart local v2    # "pos":Lgnu/kawa/xml/KNode;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isInstance(Lgnu/lists/AbstractSequence;II)Z
    .locals 6

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "seq":Lgnu/lists/AbstractSequence;
    move v1, p1

    .local v1, "ipos":I
    move v2, p2

    .local v2, "kinds":I
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lgnu/lists/AbstractSequence;->getNextKind(I)I

    move-result v4

    move v3, v4

    .line 86
    .local v3, "kind":I
    move v4, v2

    if-gez v4, :cond_1

    .line 87
    move v4, v3

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .line 121
    .end local v0    # "seq":Lgnu/lists/AbstractSequence;
    :goto_1
    return v0

    .line 87
    .restart local v0    # "seq":Lgnu/lists/AbstractSequence;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 90
    :cond_1
    move v4, v3

    packed-switch v4, :pswitch_data_0

    .line 121
    :pswitch_0
    const/4 v4, 0x1

    move v0, v4

    goto :goto_1

    .line 93
    :pswitch_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1

    .line 108
    :pswitch_2
    move v4, v2

    const/4 v5, 0x1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_2
    move v0, v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 110
    :pswitch_3
    move v4, v2

    const/4 v5, 0x2

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_3
    move v0, v4

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 112
    :pswitch_4
    move v4, v2

    const/4 v5, 0x4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    :goto_4
    move v0, v4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_4

    .line 114
    :pswitch_5
    move v4, v2

    const/16 v5, 0x8

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    :goto_5
    move v0, v4

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    goto :goto_5

    .line 116
    :pswitch_6
    move v4, v2

    const/16 v5, 0x10

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    :goto_6
    move v0, v4

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    goto :goto_6

    .line 118
    :pswitch_7
    move v4, v2

    const/16 v5, 0x20

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    :goto_7
    move v0, v4

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    goto :goto_7

    .line 90
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/NodeType;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/kawa/xml/NodeType;->kinds:I

    invoke-static {v2, v3}, Lgnu/kawa/xml/NodeType;->coerceForce(Ljava/lang/Object;I)Lgnu/kawa/xml/KNode;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/xml/NodeType;
    return-object v0
.end method

.method public compare(Lgnu/bytecode/Type;)I
    .locals 4

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/NodeType;
    move-object v1, p1

    .local v1, "other":Lgnu/bytecode/Type;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/xml/NodeType;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/kawa/xml/NodeType;
    return v0
.end method

.method public convertValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 11

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/NodeType;
    move-object v1, p1

    .local v1, "value":Lgnu/expr/Expression;
    new-instance v3, Lgnu/expr/ApplyExp;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    sget-object v5, Lgnu/kawa/xml/NodeType;->coerceMethod:Lgnu/bytecode/Method;

    const/4 v6, 0x1

    new-array v6, v6, [Lgnu/expr/Expression;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    invoke-direct {v4, v5, v6}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object v2, v3

    .line 49
    .local v2, "aexp":Lgnu/expr/ApplyExp;
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v3, v4}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 50
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/xml/NodeType;
    return-object v0
.end method

.method public emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/NodeType;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/kawa/xml/NodeType;->kinds:I

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 43
    move-object v2, v1

    sget-object v3, Lgnu/kawa/xml/NodeType;->coerceMethod:Lgnu/bytecode/Method;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 44
    return-void
.end method

.method protected emitCoerceOrNullMethod(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;)V
    .locals 6

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/NodeType;
    move-object v1, p1

    .local v1, "incoming":Lgnu/bytecode/Variable;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v4

    move-object v3, v4

    .line 148
    .local v3, "code":Lgnu/bytecode/CodeAttr;
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 149
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 150
    :cond_0
    move-object v4, v3

    move-object v5, v0

    iget v5, v5, Lgnu/kawa/xml/NodeType;->kinds:I

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 151
    move-object v4, v3

    sget-object v5, Lgnu/kawa/xml/NodeType;->coerceOrNullMethod:Lgnu/bytecode/Method;

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 152
    return-void
.end method

.method public emitIsInstance(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 10

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/NodeType;
    move-object v1, p1

    .local v1, "incoming":Lgnu/bytecode/Variable;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v3, p3

    .local v3, "target":Lgnu/expr/Target;
    move-object v6, v3

    instance-of v6, v6, Lgnu/expr/ConditionalTarget;

    if-eqz v6, :cond_1

    .line 171
    move-object v6, v3

    check-cast v6, Lgnu/expr/ConditionalTarget;

    move-object v4, v6

    .line 172
    .local v4, "ctarget":Lgnu/expr/ConditionalTarget;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lgnu/kawa/xml/NodeType;->emitCoerceOrNullMethod(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;)V

    .line 173
    move-object v6, v2

    invoke-virtual {v6}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v6

    move-object v5, v6

    .line 174
    .local v5, "code":Lgnu/bytecode/CodeAttr;
    move-object v6, v4

    iget-boolean v6, v6, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    if-eqz v6, :cond_0

    .line 175
    move-object v6, v5

    move-object v7, v4

    iget-object v7, v7, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    const/16 v8, 0xc6

    invoke-virtual {v6, v7, v8}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare1(Lgnu/bytecode/Label;I)V

    .line 178
    :goto_0
    move-object v6, v4

    move-object v7, v5

    invoke-virtual {v6, v7}, Lgnu/expr/ConditionalTarget;->emitGotoFirstBranch(Lgnu/bytecode/CodeAttr;)V

    .line 179
    .line 182
    .end local v4    # "ctarget":Lgnu/expr/ConditionalTarget;
    .end local v5    # "code":Lgnu/bytecode/CodeAttr;
    :goto_1
    return-void

    .line 177
    .restart local v4    # "ctarget":Lgnu/expr/ConditionalTarget;
    .restart local v5    # "code":Lgnu/bytecode/CodeAttr;
    :cond_0
    move-object v6, v5

    move-object v7, v4

    iget-object v7, v7, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    const/16 v8, 0xc7

    invoke-virtual {v6, v7, v8}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare1(Lgnu/bytecode/Label;I)V

    goto :goto_0

    .line 181
    .end local v4    # "ctarget":Lgnu/expr/ConditionalTarget;
    .end local v5    # "code":Lgnu/bytecode/CodeAttr;
    :cond_1
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-static {v6, v7, v8, v9}, Lgnu/kawa/reflect/InstanceOf;->emitIsInstance(Lgnu/expr/TypeValue;Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_1
.end method

.method public emitTestIf(Lgnu/bytecode/Variable;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V
    .locals 8

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/NodeType;
    move-object v1, p1

    .local v1, "incoming":Lgnu/bytecode/Variable;
    move-object v2, p2

    .local v2, "decl":Lgnu/expr/Declaration;
    move-object v3, p3

    .local v3, "comp":Lgnu/expr/Compilation;
    move-object v5, v3

    invoke-virtual {v5}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v5

    move-object v4, v5

    .line 157
    .local v4, "code":Lgnu/bytecode/CodeAttr;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Lgnu/kawa/xml/NodeType;->emitCoerceOrNullMethod(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;)V

    .line 158
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 160
    move-object v5, v4

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 161
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v5, v6}, Lgnu/expr/Declaration;->compileStore(Lgnu/expr/Compilation;)V

    .line 163
    :cond_0
    move-object v5, v4

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitIfNotNull()V

    .line 164
    return-void
.end method

.method public getConstructor()Lgnu/mapping/Procedure;
    .locals 2

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/NodeType;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/NodeType;
    return-object v0
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/NodeType;
    sget-object v1, Lgnu/kawa/xml/NodeType;->typeKNode:Lgnu/bytecode/ClassType;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/NodeType;
    return-object v0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/NodeType;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Lgnu/kawa/xml/KNode;

    if-eqz v3, :cond_0

    .line 72
    move-object v3, v1

    check-cast v3, Lgnu/kawa/xml/KNode;

    move-object v2, v3

    .line 73
    .local v2, "pos":Lgnu/kawa/xml/KNode;
    move-object v3, v0

    move-object v4, v2

    iget-object v4, v4, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    move-object v5, v2

    invoke-virtual {v5}, Lgnu/kawa/xml/KNode;->getPos()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/xml/NodeType;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v3

    move v0, v3

    .line 75
    .end local v0    # "this":Lgnu/kawa/xml/NodeType;
    .end local v2    # "pos":Lgnu/kawa/xml/KNode;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/kawa/xml/NodeType;
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public isInstancePos(Lgnu/lists/AbstractSequence;I)Z
    .locals 6

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/NodeType;
    move-object v1, p1

    .local v1, "seq":Lgnu/lists/AbstractSequence;
    move v2, p2

    .local v2, "ipos":I
    move-object v3, v1

    move v4, v2

    move-object v5, v0

    iget v5, v5, Lgnu/kawa/xml/NodeType;->kinds:I

    invoke-static {v3, v4, v5}, Lgnu/kawa/xml/NodeType;->isInstance(Lgnu/lists/AbstractSequence;II)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Lgnu/kawa/xml/NodeType;
    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/NodeType;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 213
    .local v2, "name":Ljava/lang/String;
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 214
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/kawa/xml/NodeType;->setName(Ljava/lang/String;)V

    .line 215
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Ljava/io/ObjectInput;->readInt()I

    move-result v4

    iput v4, v3, Lgnu/kawa/xml/NodeType;->kinds:I

    .line 216
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/NodeType;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NodeType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/xml/NodeType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/NodeType;
    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/NodeType;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/xml/NodeType;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 205
    .local v2, "name":Ljava/lang/String;
    move-object v3, v1

    move-object v4, v2

    if-nez v4, :cond_0

    const-string/jumbo v4, ""

    :goto_0
    invoke-interface {v3, v4}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 206
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lgnu/kawa/xml/NodeType;->kinds:I

    invoke-interface {v3, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 207
    return-void

    .line 205
    :cond_0
    move-object v4, v2

    goto :goto_0
.end method
