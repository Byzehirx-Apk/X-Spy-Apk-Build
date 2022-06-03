.class public Lgnu/kawa/functions/IsEqv;
.super Lgnu/mapping/Procedure2;
.source "IsEqv.java"


# instance fields
.field isEq:Lgnu/kawa/functions/IsEq;

.field language:Lgnu/expr/Language;


# direct methods
.method public constructor <init>(Lgnu/expr/Language;Ljava/lang/String;Lgnu/kawa/functions/IsEq;)V
    .locals 7

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/IsEqv;
    move-object v1, p1

    .local v1, "language":Lgnu/expr/Language;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, p3

    .local v3, "isEq":Lgnu/kawa/functions/IsEq;
    move-object v4, v0

    invoke-direct {v4}, Lgnu/mapping/Procedure2;-><init>()V

    .line 16
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/kawa/functions/IsEqv;->language:Lgnu/expr/Language;

    .line 17
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/kawa/functions/IsEqv;->isEq:Lgnu/kawa/functions/IsEq;

    .line 18
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lgnu/kawa/functions/IsEqv;->setName(Ljava/lang/String;)V

    .line 19
    move-object v4, v0

    sget-object v5, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v6, "gnu.kawa.functions.CompilationHelpers:validateIsEqv"

    invoke-virtual {v4, v5, v6}, Lgnu/kawa/functions/IsEqv;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method public static apply(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "arg1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "arg2":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 26
    const/4 v2, 0x1

    move v0, v2

    .line 33
    .end local v0    # "arg1":Ljava/lang/Object;
    :goto_0
    return v0

    .line 27
    .restart local v0    # "arg1":Ljava/lang/Object;
    :cond_0
    move-object v2, v0

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_1

    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_1

    .line 28
    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-static {v2, v3}, Lgnu/kawa/functions/IsEqual;->numberEquals(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v2

    move v0, v2

    goto :goto_0

    .line 29
    :cond_1
    move-object v2, v0

    instance-of v2, v2, Lgnu/text/Char;

    if-nez v2, :cond_2

    move-object v2, v0

    instance-of v2, v2, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_3

    .line 32
    :cond_2
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    goto :goto_0

    .line 33
    :cond_3
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/IsEqv;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/functions/IsEqv;->language:Lgnu/expr/Language;

    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Lgnu/kawa/functions/IsEqv;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/functions/IsEqv;
    return-object v0
.end method
