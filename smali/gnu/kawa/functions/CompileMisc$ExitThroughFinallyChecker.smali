.class Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;
.super Lgnu/expr/ExpVisitor;
.source "CompileMisc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/kawa/functions/CompileMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExitThroughFinallyChecker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/expr/ExpVisitor",
        "<",
        "Lgnu/expr/Expression;",
        "Lgnu/expr/TryExp;",
        ">;"
    }
.end annotation


# instance fields
.field decl:Lgnu/expr/Declaration;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 396
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ExpVisitor;-><init>()V

    return-void
.end method

.method public static check(Lgnu/expr/Declaration;Lgnu/expr/Expression;)Z
    .locals 7

    .prologue
    .line 403
    move-object v0, p0

    .local v0, "decl":Lgnu/expr/Declaration;
    move-object v1, p1

    .local v1, "body":Lgnu/expr/Expression;
    new-instance v3, Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;-><init>()V

    move-object v2, v3

    .line 404
    .local v2, "visitor":Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;
    move-object v3, v2

    move-object v4, v0

    iput-object v4, v3, Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;->decl:Lgnu/expr/Declaration;

    .line 405
    move-object v3, v2

    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 406
    move-object v3, v2

    iget-object v3, v3, Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;->exitValue:Ljava/lang/Object;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "decl":Lgnu/expr/Declaration;
    return v0

    .restart local v0    # "decl":Lgnu/expr/Declaration;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected defaultValue(Lgnu/expr/Expression;Lgnu/expr/TryExp;)Lgnu/expr/Expression;
    .locals 4

    .prologue
    .line 411
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;
    move-object v1, p1

    .local v1, "r":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "d":Lgnu/expr/TryExp;
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;
    return-object v0
.end method

.method protected bridge synthetic defaultValue(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 396
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Lgnu/expr/TryExp;

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;->defaultValue(Lgnu/expr/Expression;Lgnu/expr/TryExp;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;
    return-object v0
.end method

.method protected visitReferenceExp(Lgnu/expr/ReferenceExp;Lgnu/expr/TryExp;)Lgnu/expr/Expression;
    .locals 5

    .prologue
    .line 416
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ReferenceExp;
    move-object v2, p2

    .local v2, "currentTry":Lgnu/expr/TryExp;
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;->decl:Lgnu/expr/Declaration;

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v3, v2

    if-eqz v3, :cond_0

    .line 417
    move-object v3, v0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v4, v3, Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;->exitValue:Ljava/lang/Object;

    .line 418
    :cond_0
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;
    return-object v0
.end method

.method protected bridge synthetic visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 396
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/ReferenceExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Lgnu/expr/TryExp;

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;->visitReferenceExp(Lgnu/expr/ReferenceExp;Lgnu/expr/TryExp;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;
    return-object v0
.end method

.method protected visitTryExp(Lgnu/expr/TryExp;Lgnu/expr/TryExp;)Lgnu/expr/Expression;
    .locals 6

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/TryExp;
    move-object v2, p2

    .local v2, "currentTry":Lgnu/expr/TryExp;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/expr/TryExp;->getFinallyClause()Lgnu/expr/Expression;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v5, v1

    :goto_0
    invoke-virtual {v3, v4, v5}, Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;->visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 424
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;
    return-object v0

    .line 423
    .restart local v0    # "this":Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;
    :cond_0
    move-object v5, v2

    goto :goto_0
.end method

.method protected bridge synthetic visitTryExp(Lgnu/expr/TryExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 396
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/TryExp;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Lgnu/expr/TryExp;

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;->visitTryExp(Lgnu/expr/TryExp;Lgnu/expr/TryExp;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;
    return-object v0
.end method
