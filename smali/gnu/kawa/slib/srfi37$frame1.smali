.class public Lgnu/kawa/slib/srfi37$frame1;
.super Lgnu/expr/ModuleBody;
.source "srfi37.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi37$frame;->lambda3scanShortOptions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame1"
.end annotation


# instance fields
.field args:Ljava/lang/Object;

.field index:Ljava/lang/Object;

.field final lambda$Fn3:Lgnu/expr/ModuleMethod;

.field final lambda$Fn4:Lgnu/expr/ModuleMethod;

.field final lambda$Fn5:Lgnu/expr/ModuleMethod;

.field final lambda$Fn6:Lgnu/expr/ModuleMethod;

.field final lambda$Fn7:Lgnu/expr/ModuleMethod;

.field final lambda$Fn8:Lgnu/expr/ModuleMethod;

.field name:C

.field option:Ljava/lang/Object;

.field seeds:Ljava/lang/Object;

.field shorts:Ljava/lang/Object;

.field staticLink:Lgnu/kawa/slib/srfi37$frame;


# direct methods
.method public constructor <init>()V
    .locals 9

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ModuleBody;-><init>()V

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn3:Lgnu/expr/ModuleMethod;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v7, -0x1000

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn4:Lgnu/expr/ModuleMethod;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn5:Lgnu/expr/ModuleMethod;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/16 v7, -0x1000

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn6:Lgnu/expr/ModuleMethod;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn7:Lgnu/expr/ModuleMethod;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/16 v7, -0x1000

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn8:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget v2, v2, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    :goto_0
    return-object v0

    :pswitch_1
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/slib/srfi37$frame1;->lambda8()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    :pswitch_2
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/slib/srfi37$frame1;->lambda10()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    :pswitch_3
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/slib/srfi37$frame1;->lambda12()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    :pswitch_1
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/kawa/slib/srfi37$frame1;->lambda9$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    :pswitch_2
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/kawa/slib/srfi37$frame1;->lambda11$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    :pswitch_3
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/kawa/slib/srfi37$frame1;->lambda13$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method lambda10()Ljava/lang/Object;
    .locals 10

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi37$frame1;
    sget-object v2, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/srfi37$frame1;->option:Ljava/lang/Object;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    move-object v1, v7

    :try_start_0
    check-cast v6, Lgnu/kawa/slib/option$Mntype;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v6}, Lgnu/kawa/slib/srfi37;->optionProcessor(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x1

    .line 104
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/srfi37$frame1;->option:Ljava/lang/Object;

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x2

    .line 105
    move-object v6, v0

    iget-char v6, v6, Lgnu/kawa/slib/srfi37$frame1;->name:C

    invoke-static {v6}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x3

    .line 106
    sget-object v6, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/slib/srfi37$frame1;->args:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x4

    .line 107
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/srfi37$frame1;->seeds:Ljava/lang/Object;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/slib/srfi37$frame1;
    return-object v0

    .line 103
    .restart local v0    # "this":Lgnu/kawa/slib/srfi37$frame1;
    :catch_0
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    move-object v8, v2

    move-object v9, v3

    move-object v2, v9

    move-object v3, v8

    move-object v4, v9

    move-object v8, v3

    move-object v9, v4

    move-object v3, v9

    move-object v4, v8

    const-string/jumbo v5, "option-processor"

    const/4 v6, 0x0

    move-object v7, v1

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2
.end method

.method lambda11$V([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi37$frame1;
    move-object v1, p1

    .local v1, "argsArray":[Ljava/lang/Object;
    move-object v4, v1

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v4

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v3, v5

    move-object v2, v4

    .line 102
    .local v2, "x":Lgnu/lists/LList;
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/slib/srfi37$frame1;->staticLink:Lgnu/kawa/slib/srfi37$frame;

    sget-object v5, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 108
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/srfi37$frame1;->args:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/kawa/slib/srfi37$frame;->lambda5scanArgs(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/slib/srfi37$frame1;
    return-object v0
.end method

.method lambda12()Ljava/lang/Object;
    .locals 10

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi37$frame1;
    sget-object v2, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/srfi37$frame1;->option:Ljava/lang/Object;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    move-object v1, v7

    :try_start_0
    check-cast v6, Lgnu/kawa/slib/option$Mntype;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v6}, Lgnu/kawa/slib/srfi37;->optionProcessor(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x1

    .line 112
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/srfi37$frame1;->option:Ljava/lang/Object;

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x2

    .line 113
    move-object v6, v0

    iget-char v6, v6, Lgnu/kawa/slib/srfi37$frame1;->name:C

    invoke-static {v6}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x4

    .line 115
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/srfi37$frame1;->seeds:Ljava/lang/Object;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/slib/srfi37$frame1;
    return-object v0

    .line 111
    .restart local v0    # "this":Lgnu/kawa/slib/srfi37$frame1;
    :catch_0
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    move-object v8, v2

    move-object v9, v3

    move-object v2, v9

    move-object v3, v8

    move-object v4, v9

    move-object v8, v3

    move-object v9, v4

    move-object v3, v9

    move-object v4, v8

    const-string/jumbo v5, "option-processor"

    const/4 v6, 0x0

    move-object v7, v1

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2
.end method

.method lambda13$V([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi37$frame1;
    move-object v1, p1

    .local v1, "argsArray":[Ljava/lang/Object;
    move-object v4, v1

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v4

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v3, v5

    move-object v2, v4

    .line 110
    .local v2, "x":Lgnu/lists/LList;
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/slib/srfi37$frame1;->staticLink:Lgnu/kawa/slib/srfi37$frame;

    sget-object v5, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 117
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/srfi37$frame1;->index:Ljava/lang/Object;

    sget-object v7, Lgnu/kawa/slib/srfi37;->Lit0:Lgnu/math/IntNum;

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/srfi37$frame1;->shorts:Ljava/lang/Object;

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/slib/srfi37$frame1;->args:Ljava/lang/Object;

    move-object v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lgnu/kawa/slib/srfi37$frame;->lambda3scanShortOptions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/slib/srfi37$frame1;
    return-object v0
.end method

.method lambda8()Ljava/lang/Object;
    .locals 12

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi37$frame1;
    sget-object v2, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/srfi37$frame1;->option:Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v1, v7

    :try_start_0
    check-cast v6, Lgnu/kawa/slib/option$Mntype;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v6}, Lgnu/kawa/slib/srfi37;->optionProcessor(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/4 v5, 0x1

    .line 92
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/srfi37$frame1;->option:Ljava/lang/Object;

    aput-object v6, v4, v5

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/4 v5, 0x2

    .line 93
    move-object v6, v0

    iget-char v6, v6, Lgnu/kawa/slib/srfi37$frame1;->name:C

    invoke-static {v6}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/4 v5, 0x3

    .line 94
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/srfi37$frame1;->shorts:Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v1, v7

    :try_start_1
    check-cast v6, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    sget-object v7, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 96
    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/srfi37$frame1;->index:Ljava/lang/Object;

    sget-object v9, Lgnu/kawa/slib/srfi37;->Lit0:Lgnu/math/IntNum;

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v1, v8

    :try_start_2
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/srfi37$frame1;->shorts:Ljava/lang/Object;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    move-object v1, v9

    :try_start_3
    check-cast v8, Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {v8}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v8

    invoke-static {v6, v7, v8}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/4 v5, 0x4

    .line 98
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/slib/srfi37$frame1;->seeds:Ljava/lang/Object;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/slib/srfi37$frame1;
    return-object v0

    .line 91
    .restart local v0    # "this":Lgnu/kawa/slib/srfi37$frame1;
    :catch_0
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    move-object v10, v2

    move-object v11, v3

    move-object v2, v11

    move-object v3, v10

    move-object v4, v11

    move-object v10, v3

    move-object v11, v4

    move-object v3, v11

    move-object v4, v10

    const-string/jumbo v5, "option-processor"

    const/4 v6, 0x0

    move-object v7, v1

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 95
    :catch_1
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    move-object v10, v2

    move-object v11, v3

    move-object v2, v11

    move-object v3, v10

    move-object v4, v11

    move-object v10, v3

    move-object v11, v4

    move-object v3, v11

    move-object v4, v10

    const-string/jumbo v5, "substring"

    const/4 v6, 0x1

    move-object v7, v1

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 96
    :catch_2
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    move-object v10, v2

    move-object v11, v3

    move-object v2, v11

    move-object v3, v10

    move-object v4, v11

    move-object v10, v3

    move-object v11, v4

    move-object v3, v11

    move-object v4, v10

    const-string/jumbo v5, "substring"

    const/4 v6, 0x2

    move-object v7, v1

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 97
    :catch_3
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    move-object v10, v2

    move-object v11, v3

    move-object v2, v11

    move-object v3, v10

    move-object v4, v11

    move-object v10, v3

    move-object v11, v4

    move-object v3, v11

    move-object v4, v10

    const-string/jumbo v5, "string-length"

    const/4 v6, 0x1

    move-object v7, v1

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2
.end method

.method lambda9$V([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi37$frame1;
    move-object v1, p1

    .local v1, "argsArray":[Ljava/lang/Object;
    move-object v4, v1

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v4

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v3, v5

    move-object v2, v4

    .line 90
    .local v2, "x":Lgnu/lists/LList;
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/slib/srfi37$frame1;->staticLink:Lgnu/kawa/slib/srfi37$frame;

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/srfi37$frame1;->args:Ljava/lang/Object;

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/kawa/slib/srfi37$frame;->lambda5scanArgs(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/slib/srfi37$frame1;
    return-object v0
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v3

    move v0, v3

    :goto_0
    return v0

    :pswitch_1
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Lgnu/mapping/CallContext;->pc:I

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    :pswitch_2
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Lgnu/mapping/CallContext;->pc:I

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    :pswitch_3
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Lgnu/mapping/CallContext;->pc:I

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

    :goto_0
    return v0

    :pswitch_1
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x5

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    :pswitch_2
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x5

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    :pswitch_3
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x5

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
