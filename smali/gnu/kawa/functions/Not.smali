.class public Lgnu/kawa/functions/Not;
.super Lgnu/mapping/Procedure1;
.source "Not.java"


# instance fields
.field language:Lgnu/expr/Language;


# direct methods
.method public constructor <init>(Lgnu/expr/Language;)V
    .locals 5

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/Not;
    move-object v1, p1

    .local v1, "language":Lgnu/expr/Language;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/mapping/Procedure1;-><init>()V

    .line 13
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/functions/Not;->language:Lgnu/expr/Language;

    .line 14
    move-object v2, v0

    sget-object v3, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v4, "gnu.kawa.functions.CompileMisc:validateApplyNot"

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/functions/Not;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    sget-object v2, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    move-object v3, v0

    const-string/jumbo v4, "*gnu.kawa.functions.CompileMisc:forNot"

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/LazyPropertyKey;->set(Lgnu/mapping/PropertySet;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Lgnu/expr/Language;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/Not;
    move-object v1, p1

    .local v1, "language":Lgnu/expr/Language;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lgnu/kawa/functions/Not;-><init>(Lgnu/expr/Language;)V

    .line 22
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/kawa/functions/Not;->setName(Ljava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/Not;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/functions/Not;->language:Lgnu/expr/Language;

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/functions/Not;->language:Lgnu/expr/Language;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/expr/Language;->isTrue(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/functions/Not;
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/functions/Not;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
