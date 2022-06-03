.class public Lgnu/kawa/slib/testing$frame1;
.super Lgnu/expr/ModuleBody;
.source "testing.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/testing;->testApply$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame1"
.end annotation


# instance fields
.field first:Ljava/lang/Object;

.field final lambda$Fn10:Lgnu/expr/ModuleMethod;

.field final lambda$Fn5:Lgnu/expr/ModuleMethod;

.field final lambda$Fn6:Lgnu/expr/ModuleMethod;

.field final lambda$Fn7:Lgnu/expr/ModuleMethod;

.field final lambda$Fn8:Lgnu/expr/ModuleMethod;

.field final lambda$Fn9:Lgnu/expr/ModuleMethod;

.field r:Ljava/lang/Object;

.field rest:Lgnu/lists/LList;

.field saved$Mnrunner:Ljava/lang/Object;

.field saved$Mnrunner$1:Ljava/lang/Object;


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

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/testing$frame1;->lambda$Fn5:Lgnu/expr/ModuleMethod;

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

    iput-object v2, v1, Lgnu/kawa/slib/testing$frame1;->lambda$Fn6:Lgnu/expr/ModuleMethod;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "source-location"

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm:897"

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v1, Lgnu/kawa/slib/testing$frame1;->lambda$Fn7:Lgnu/expr/ModuleMethod;

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

    iput-object v2, v1, Lgnu/kawa/slib/testing$frame1;->lambda$Fn8:Lgnu/expr/ModuleMethod;

    move-object v1, v0

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v2, v1, Lgnu/kawa/slib/testing$frame1;->lambda$Fn9:Lgnu/expr/ModuleMethod;

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

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string/jumbo v4, "source-location"

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm:897"

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v1, Lgnu/kawa/slib/testing$frame1;->lambda$Fn10:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 4

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget v2, v2, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v2, :pswitch_data_0

    .line 897
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    :goto_0
    return-object v0

    .line 4294967295
    :pswitch_0
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/slib/testing$frame1;->lambda6()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    :pswitch_1
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/slib/testing$frame1;->lambda7()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 897
    :pswitch_2
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/slib/testing$frame1;->lambda8()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    :pswitch_3
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/slib/testing$frame1;->lambda9()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    :pswitch_4
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/slib/testing$frame1;->lambda10()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    :pswitch_5
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/slib/testing$frame1;->lambda11()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method lambda10()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 887
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/testing$frame1;
    sget-object v1, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    sget-object v2, Lgnu/kawa/slib/testing;->test$Mnapply:Lgnu/expr/ModuleMethod;

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/slib/testing$frame1;->first:Ljava/lang/Object;

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/slib/testing$frame1;->rest:Lgnu/lists/LList;

    invoke-virtual {v1, v2, v3, v4}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/slib/testing$frame1;
    return-object v0
.end method

.method lambda11()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 897
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/testing$frame1;
    sget-object v1, Lgnu/kawa/slib/testing;->test$Mnrunner$Mncurrent:Ljava/lang/Object;

    check-cast v1, Lgnu/mapping/Procedure;

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/slib/testing$frame1;->saved$Mnrunner:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/slib/testing$frame1;
    return-object v0
.end method

.method lambda6()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 873
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/testing$frame1;
    sget-object v1, Lgnu/kawa/slib/testing;->test$Mnrunner$Mncurrent:Ljava/lang/Object;

    check-cast v1, Lgnu/mapping/Procedure;

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/slib/testing$frame1;->first:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/slib/testing$frame1;
    return-object v0
.end method

.method lambda7()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 873
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/testing$frame1;
    sget-object v1, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    sget-object v2, Lgnu/kawa/slib/testing;->test$Mnapply:Lgnu/expr/ModuleMethod;

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/slib/testing$frame1;->rest:Lgnu/lists/LList;

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/slib/testing$frame1;
    return-object v0
.end method

.method lambda8()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 897
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/testing$frame1;
    sget-object v1, Lgnu/kawa/slib/testing;->test$Mnrunner$Mncurrent:Ljava/lang/Object;

    check-cast v1, Lgnu/mapping/Procedure;

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/slib/testing$frame1;->saved$Mnrunner$1:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/slib/testing$frame1;
    return-object v0
.end method

.method lambda9()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 887
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/testing$frame1;
    sget-object v1, Lgnu/kawa/slib/testing;->test$Mnrunner$Mncurrent:Ljava/lang/Object;

    check-cast v1, Lgnu/mapping/Procedure;

    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/slib/testing$frame1;->r:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/slib/testing$frame1;
    return-object v0
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 6

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v3, :pswitch_data_0

    .line 897
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v3

    move v0, v3

    :goto_0
    return v0

    :pswitch_0
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Lgnu/mapping/CallContext;->pc:I

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

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

    :pswitch_4
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Lgnu/mapping/CallContext;->pc:I

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    :pswitch_5
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Lgnu/mapping/CallContext;->pc:I

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
