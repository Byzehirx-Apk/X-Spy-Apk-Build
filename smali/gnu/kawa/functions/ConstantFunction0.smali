.class public Lgnu/kawa/functions/ConstantFunction0;
.super Lgnu/mapping/Procedure0;
.source "ConstantFunction0.java"


# instance fields
.field final constant:Lgnu/expr/QuoteExp;

.field final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lgnu/expr/QuoteExp;)V
    .locals 6

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/ConstantFunction0;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "constant":Lgnu/expr/QuoteExp;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lgnu/mapping/Procedure0;-><init>(Ljava/lang/String;)V

    .line 24
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Lgnu/kawa/functions/ConstantFunction0;->value:Ljava/lang/Object;

    .line 25
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/kawa/functions/ConstantFunction0;->constant:Lgnu/expr/QuoteExp;

    .line 26
    move-object v3, v0

    sget-object v4, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v5, "gnu.kawa.functions.CompileMisc:validateApplyConstantFunction0"

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/functions/ConstantFunction0;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/ConstantFunction0;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v5}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lgnu/kawa/functions/ConstantFunction0;-><init>(Ljava/lang/String;Lgnu/expr/QuoteExp;)V

    .line 19
    return-void
.end method


# virtual methods
.method public apply0()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/ConstantFunction0;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/functions/ConstantFunction0;->value:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/functions/ConstantFunction0;
    return-object v0
.end method
