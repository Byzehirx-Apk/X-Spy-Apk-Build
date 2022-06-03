.class public Lgnu/mapping/CallContext;
.super Ljava/lang/Object;
.source "CallContext.java"


# static fields
.field public static final ARG_IN_IVALUE1:I = 0x5

.field public static final ARG_IN_IVALUE2:I = 0x6

.field public static final ARG_IN_VALUE1:I = 0x1

.field public static final ARG_IN_VALUE2:I = 0x2

.field public static final ARG_IN_VALUE3:I = 0x3

.field public static final ARG_IN_VALUE4:I = 0x4

.field public static final ARG_IN_VALUES_ARRAY:I

.field static currentContext:Ljava/lang/ThreadLocal;


# instance fields
.field public consumer:Lgnu/lists/Consumer;

.field public count:I

.field public evalFrames:[[Ljava/lang/Object;

.field public ivalue1:I

.field public ivalue2:I

.field public next:I

.field public pc:I

.field public proc:Lgnu/mapping/Procedure;

.field public value1:Ljava/lang/Object;

.field public value2:Ljava/lang/Object;

.field public value3:Ljava/lang/Object;

.field public value4:Ljava/lang/Object;

.field public values:[Ljava/lang/Object;

.field public vstack:Lgnu/mapping/ValueStack;

.field public where:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    new-instance v0, Ljava/lang/ThreadLocal;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lgnu/mapping/CallContext;->currentContext:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/CallContext;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 69
    move-object v1, v0

    new-instance v2, Lgnu/mapping/ValueStack;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lgnu/mapping/ValueStack;-><init>()V

    iput-object v2, v1, Lgnu/mapping/CallContext;->vstack:Lgnu/mapping/ValueStack;

    .line 72
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/CallContext;->vstack:Lgnu/mapping/ValueStack;

    iput-object v2, v1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    return-void
.end method

.method public static getInstance()Lgnu/mapping/CallContext;
    .locals 4

    .prologue
    .line 48
    invoke-static {}, Lgnu/mapping/CallContext;->getOnlyInstance()Lgnu/mapping/CallContext;

    move-result-object v1

    move-object v0, v1

    .line 49
    .local v0, "ctx":Lgnu/mapping/CallContext;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Lgnu/mapping/CallContext;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lgnu/mapping/CallContext;-><init>()V

    move-object v0, v1

    .line 52
    move-object v1, v0

    invoke-static {v1}, Lgnu/mapping/CallContext;->setInstance(Lgnu/mapping/CallContext;)V

    .line 54
    :cond_0
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "ctx":Lgnu/mapping/CallContext;
    return-object v0
.end method

.method public static getOnlyInstance()Lgnu/mapping/CallContext;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lgnu/mapping/CallContext;->currentContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/CallContext;

    return-object v0
.end method

.method public static setInstance(Lgnu/mapping/CallContext;)V
    .locals 4

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "ctx":Lgnu/mapping/CallContext;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    move-object v1, v2

    .line 23
    .local v1, "thread":Ljava/lang/Thread;
    sget-object v2, Lgnu/mapping/CallContext;->currentContext:Ljava/lang/ThreadLocal;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 30
    return-void
.end method


# virtual methods
.method public final cleanupFromContext(I)V
    .locals 9

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/CallContext;
    move v1, p1

    .local v1, "oldIndex":I
    move-object v5, v0

    iget-object v5, v5, Lgnu/mapping/CallContext;->vstack:Lgnu/mapping/ValueStack;

    move-object v2, v5

    .line 280
    .local v2, "vst":Lgnu/mapping/ValueStack;
    move-object v5, v2

    iget-object v5, v5, Lgnu/mapping/ValueStack;->data:[C

    move-object v3, v5

    .line 281
    .local v3, "data":[C
    move-object v5, v3

    move v6, v1

    const/4 v7, 0x2

    add-int/lit8 v6, v6, -0x2

    aget-char v5, v5, v6

    const/16 v6, 0x10

    shl-int/lit8 v5, v5, 0x10

    move-object v6, v3

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    aget-char v6, v6, v7

    const v7, 0xffff

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    move v4, v5

    .line 282
    .local v4, "oindex":I
    move-object v5, v0

    move-object v6, v2

    iget-object v6, v6, Lgnu/mapping/ValueStack;->objects:[Ljava/lang/Object;

    move v7, v4

    aget-object v6, v6, v7

    check-cast v6, Lgnu/lists/Consumer;

    iput-object v6, v5, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 283
    move-object v5, v2

    iget-object v5, v5, Lgnu/mapping/ValueStack;->objects:[Ljava/lang/Object;

    move v6, v4

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 284
    move-object v5, v2

    move v6, v4

    iput v6, v5, Lgnu/mapping/ValueStack;->oindex:I

    .line 285
    move-object v5, v2

    move v6, v1

    const/4 v7, 0x3

    add-int/lit8 v6, v6, -0x3

    iput v6, v5, Lgnu/mapping/ValueStack;->gapStart:I

    .line 286
    return-void
.end method

.method getArgAsObject(I)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/CallContext;
    move v1, p1

    .local v1, "i":I
    move v2, v1

    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 107
    move-object v2, v0

    iget v2, v2, Lgnu/mapping/CallContext;->where:I

    const/4 v3, 0x4

    move v4, v1

    mul-int/2addr v3, v4

    shr-int/2addr v2, v3

    const/16 v3, 0xf

    and-int/lit8 v2, v2, 0xf

    packed-switch v2, :pswitch_data_0

    .line 117
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    .end local v0    # "this":Lgnu/mapping/CallContext;
    :goto_0
    return-object v0

    .line 109
    .restart local v0    # "this":Lgnu/mapping/CallContext;
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v0, v2

    goto :goto_0

    .line 110
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v0, v2

    goto :goto_0

    .line 111
    :pswitch_2
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    move-object v0, v2

    goto :goto_0

    .line 112
    :pswitch_3
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    move-object v0, v2

    goto :goto_0

    .line 113
    :pswitch_4
    move-object v2, v0

    iget v2, v2, Lgnu/mapping/CallContext;->ivalue1:I

    invoke-static {v2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 114
    :pswitch_5
    move-object v2, v0

    iget v2, v2, Lgnu/mapping/CallContext;->ivalue2:I

    invoke-static {v2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getArgCount()I
    .locals 2

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/CallContext;
    move-object v1, v0

    iget v1, v1, Lgnu/mapping/CallContext;->count:I

    move v0, v1

    .end local v0    # "this":Lgnu/mapping/CallContext;
    return v0
.end method

.method public getArgs()[Ljava/lang/Object;
    .locals 7

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/CallContext;
    move-object v4, v0

    iget v4, v4, Lgnu/mapping/CallContext;->where:I

    if-nez v4, :cond_0

    .line 204
    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    move-object v0, v4

    .line 212
    .end local v0    # "this":Lgnu/mapping/CallContext;
    .local v1, "n":I
    .local v2, "args":[Ljava/lang/Object;
    .local v3, "i":I
    :goto_0
    return-object v0

    .line 207
    .end local v1    # "n":I
    .end local v2    # "args":[Ljava/lang/Object;
    .end local v3    # "i":I
    .restart local v0    # "this":Lgnu/mapping/CallContext;
    :cond_0
    move-object v4, v0

    iget v4, v4, Lgnu/mapping/CallContext;->count:I

    move v1, v4

    .line 208
    .restart local v1    # "n":I
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lgnu/mapping/CallContext;->next:I

    .line 209
    move v4, v1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v2, v4

    .line 210
    .restart local v2    # "args":[Ljava/lang/Object;
    const/4 v4, 0x0

    move v3, v4

    .restart local v3    # "i":I
    :goto_1
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 211
    move-object v4, v2

    move v5, v3

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    .line 210
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 212
    :cond_1
    move-object v4, v2

    move-object v0, v4

    goto :goto_0
.end method

.method public final getFromContext(I)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/CallContext;
    move v1, p1

    .local v1, "oldIndex":I
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/mapping/CallContext;->runUntilDone()V

    .line 264
    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/CallContext;->vstack:Lgnu/mapping/ValueStack;

    move-object v2, v4

    .line 265
    .local v2, "vst":Lgnu/mapping/ValueStack;
    move-object v4, v2

    move v5, v1

    move-object v6, v2

    iget v6, v6, Lgnu/mapping/ValueStack;->gapStart:I

    invoke-static {v4, v5, v6}, Lgnu/mapping/Values;->make(Lgnu/lists/TreeList;II)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 266
    .local v3, "result":Ljava/lang/Object;
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    .line 267
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lgnu/mapping/CallContext;
    return-object v0
.end method

.method public getNextArg()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/CallContext;
    move-object v1, v0

    iget v1, v1, Lgnu/mapping/CallContext;->next:I

    move-object v2, v0

    iget v2, v2, Lgnu/mapping/CallContext;->count:I

    if-lt v1, v2, :cond_0

    .line 131
    new-instance v1, Lgnu/mapping/WrongArguments;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x0

    move-object v4, v0

    iget v4, v4, Lgnu/mapping/CallContext;->count:I

    invoke-direct {v2, v3, v4}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v1

    .line 132
    :cond_0
    move-object v1, v0

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lgnu/mapping/CallContext;->next:I

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lgnu/mapping/CallContext;->next:I

    invoke-virtual {v1, v2}, Lgnu/mapping/CallContext;->getArgAsObject(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/mapping/CallContext;
    return-object v0
.end method

.method public getNextArg(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/CallContext;
    move-object v1, p1

    .local v1, "defaultValue":Ljava/lang/Object;
    move-object v2, v0

    iget v2, v2, Lgnu/mapping/CallContext;->next:I

    move-object v3, v0

    iget v3, v3, Lgnu/mapping/CallContext;->count:I

    if-lt v2, v3, :cond_0

    .line 149
    move-object v2, v1

    move-object v0, v2

    .line 150
    .end local v0    # "this":Lgnu/mapping/CallContext;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/mapping/CallContext;
    :cond_0
    move-object v2, v0

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lgnu/mapping/CallContext;->next:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->next:I

    invoke-virtual {v2, v3}, Lgnu/mapping/CallContext;->getArgAsObject(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public getNextIntArg()I
    .locals 9

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/CallContext;
    move-object v2, v0

    iget v2, v2, Lgnu/mapping/CallContext;->next:I

    move-object v3, v0

    iget v3, v3, Lgnu/mapping/CallContext;->count:I

    if-lt v2, v3, :cond_0

    .line 138
    new-instance v2, Lgnu/mapping/WrongArguments;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    move-object v5, v0

    iget v5, v5, Lgnu/mapping/CallContext;->count:I

    invoke-direct {v3, v4, v5}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v2

    .line 139
    :cond_0
    move-object v2, v0

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lgnu/mapping/CallContext;->next:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->next:I

    invoke-virtual {v2, v3}, Lgnu/mapping/CallContext;->getArgAsObject(I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 140
    .local v1, "arg":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/mapping/CallContext;
    return v0
.end method

.method public getNextIntArg(I)I
    .locals 9

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/CallContext;
    move v1, p1

    .local v1, "defaultValue":I
    move-object v2, v0

    iget v2, v2, Lgnu/mapping/CallContext;->next:I

    move-object v3, v0

    iget v3, v3, Lgnu/mapping/CallContext;->count:I

    if-lt v2, v3, :cond_0

    .line 156
    move v2, v1

    move v0, v2

    .line 157
    .end local v0    # "this":Lgnu/mapping/CallContext;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/mapping/CallContext;
    :cond_0
    move-object v2, v0

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lgnu/mapping/CallContext;->next:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->next:I

    invoke-virtual {v2, v3}, Lgnu/mapping/CallContext;->getArgAsObject(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public final getRestArgsArray(I)[Ljava/lang/Object;
    .locals 8

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/CallContext;
    move v1, p1

    .local v1, "next":I
    move-object v4, v0

    iget v4, v4, Lgnu/mapping/CallContext;->count:I

    move v5, v1

    sub-int/2addr v4, v5

    new-array v4, v4, [Ljava/lang/Object;

    move-object v2, v4

    .line 164
    .local v2, "args":[Ljava/lang/Object;
    const/4 v4, 0x0

    move v3, v4

    .line 165
    .local v3, "i":I
    :goto_0
    move v4, v1

    move-object v5, v0

    iget v5, v5, Lgnu/mapping/CallContext;->count:I

    if-ge v4, v5, :cond_0

    .line 167
    move-object v4, v2

    move v5, v3

    add-int/lit8 v3, v3, 0x1

    move-object v6, v0

    move v7, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v6, v7}, Lgnu/mapping/CallContext;->getArgAsObject(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    goto :goto_0

    .line 169
    :cond_0
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Lgnu/mapping/CallContext;
    return-object v0
.end method

.method public final getRestArgsList(I)Lgnu/lists/LList;
    .locals 11

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/CallContext;
    move v1, p1

    .local v1, "next":I
    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v2, v6

    .line 177
    .local v2, "nil":Lgnu/lists/LList;
    move-object v6, v2

    move-object v3, v6

    .line 178
    .local v3, "list":Lgnu/lists/LList;
    const/4 v6, 0x0

    move-object v4, v6

    .line 179
    .local v4, "last":Lgnu/lists/Pair;
    :goto_0
    move v6, v1

    move-object v7, v0

    iget v7, v7, Lgnu/mapping/CallContext;->count:I

    if-ge v6, v7, :cond_1

    .line 181
    new-instance v6, Lgnu/lists/Pair;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move v9, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v8, v9}, Lgnu/mapping/CallContext;->getArgAsObject(I)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v5, v6

    .line 182
    .local v5, "pair":Lgnu/lists/Pair;
    move-object v6, v4

    if-nez v6, :cond_0

    .line 183
    move-object v6, v5

    move-object v3, v6

    .line 186
    :goto_1
    move-object v6, v5

    move-object v4, v6

    .line 187
    goto :goto_0

    .line 185
    :cond_0
    move-object v6, v4

    move-object v7, v5

    invoke-virtual {v6, v7}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    goto :goto_1

    .line 188
    .end local v5    # "pair":Lgnu/lists/Pair;
    :cond_1
    move-object v6, v3

    move-object v0, v6

    .end local v0    # "this":Lgnu/mapping/CallContext;
    return-object v0
.end method

.method public lastArg()V
    .locals 6

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/CallContext;
    move-object v1, v0

    iget v1, v1, Lgnu/mapping/CallContext;->next:I

    move-object v2, v0

    iget v2, v2, Lgnu/mapping/CallContext;->count:I

    if-ge v1, v2, :cond_0

    .line 197
    new-instance v1, Lgnu/mapping/WrongArguments;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    move-object v4, v0

    iget v4, v4, Lgnu/mapping/CallContext;->count:I

    invoke-direct {v2, v3, v4}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v1

    .line 198
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    .line 199
    return-void
.end method

.method public runUntilDone()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/CallContext;
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v1, v2

    .line 221
    .local v1, "proc":Lgnu/mapping/Procedure;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 231
    .line 236
    return-void

    .line 233
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 234
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->apply(Lgnu/mapping/CallContext;)V

    .line 235
    goto :goto_0
.end method

.method public final runUntilValue()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/CallContext;
    move-object v7, v0

    iget-object v7, v7, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v1, v7

    .line 292
    .local v1, "consumerSave":Lgnu/lists/Consumer;
    move-object v7, v0

    iget-object v7, v7, Lgnu/mapping/CallContext;->vstack:Lgnu/mapping/ValueStack;

    move-object v2, v7

    .line 293
    .local v2, "vst":Lgnu/mapping/ValueStack;
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 294
    move-object v7, v2

    iget v7, v7, Lgnu/mapping/ValueStack;->gapStart:I

    move v3, v7

    .line 295
    .local v3, "dindexSave":I
    move-object v7, v2

    iget v7, v7, Lgnu/mapping/ValueStack;->oindex:I

    move v4, v7

    .line 298
    .local v4, "oindexSave":I
    move-object v7, v0

    :try_start_0
    invoke-virtual {v7}, Lgnu/mapping/CallContext;->runUntilDone()V

    .line 299
    move-object v7, v2

    move v8, v3

    move-object v9, v2

    iget v9, v9, Lgnu/mapping/ValueStack;->gapStart:I

    invoke-static {v7, v8, v9}, Lgnu/mapping/Values;->make(Lgnu/lists/TreeList;II)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    move-object v5, v7

    .line 303
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 304
    move-object v7, v2

    move v8, v3

    iput v8, v7, Lgnu/mapping/ValueStack;->gapStart:I

    .line 305
    move-object v7, v2

    move v8, v4

    iput v8, v7, Lgnu/mapping/ValueStack;->oindex:I

    move-object v7, v5

    move-object v0, v7

    .end local v0    # "this":Lgnu/mapping/CallContext;
    return-object v0

    .line 303
    .restart local v0    # "this":Lgnu/mapping/CallContext;
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 304
    move-object v7, v2

    move v8, v3

    iput v8, v7, Lgnu/mapping/ValueStack;->gapStart:I

    .line 305
    move-object v7, v2

    move v8, v4

    iput v8, v7, Lgnu/mapping/ValueStack;->oindex:I

    move-object v7, v6

    throw v7
.end method

.method public final runUntilValue(Lgnu/lists/Consumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/CallContext;
    move-object v1, p1

    .local v1, "out":Lgnu/lists/Consumer;
    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v4

    .line 313
    .local v2, "consumerSave":Lgnu/lists/Consumer;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 316
    move-object v4, v0

    :try_start_0
    invoke-virtual {v4}, Lgnu/mapping/CallContext;->runUntilDone()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 321
    .line 322
    return-void

    .line 320
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v4, v3

    throw v4
.end method

.method public final startFromContext()I
    .locals 7

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/CallContext;
    move-object v4, v0

    iget-object v4, v4, Lgnu/mapping/CallContext;->vstack:Lgnu/mapping/ValueStack;

    move-object v1, v4

    .line 248
    .local v1, "vst":Lgnu/mapping/ValueStack;
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    invoke-virtual {v4, v5}, Lgnu/mapping/ValueStack;->find(Ljava/lang/Object;)I

    move-result v4

    move v2, v4

    .line 249
    .local v2, "oindex":I
    move-object v4, v1

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lgnu/mapping/ValueStack;->ensureSpace(I)V

    .line 250
    move-object v4, v1

    iget v4, v4, Lgnu/mapping/ValueStack;->gapStart:I

    move v3, v4

    .line 251
    .local v3, "gapStart":I
    move-object v4, v1

    iget-object v4, v4, Lgnu/mapping/ValueStack;->data:[C

    move v5, v3

    add-int/lit8 v3, v3, 0x1

    const v6, 0xf102

    aput-char v6, v4, v5

    .line 252
    move-object v4, v1

    move v5, v3

    move v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/ValueStack;->setIntN(II)V

    .line 253
    add-int/lit8 v3, v3, 0x2

    .line 254
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 255
    move-object v4, v1

    move v5, v3

    iput v5, v4, Lgnu/mapping/ValueStack;->gapStart:I

    .line 256
    move v4, v3

    move v0, v4

    .end local v0    # "this":Lgnu/mapping/CallContext;
    return v0
.end method

.method public writeValue(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/CallContext;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    invoke-static {v2, v3}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 328
    return-void
.end method
