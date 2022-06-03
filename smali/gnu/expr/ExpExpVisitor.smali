.class public abstract Lgnu/expr/ExpExpVisitor;
.super Lgnu/expr/ExpVisitor;
.source "ExpExpVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Lgnu/expr/ExpVisitor",
        "<",
        "Lgnu/expr/Expression;",
        "TD;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpExpVisitor;, "Lgnu/expr/ExpExpVisitor<TD;>;"
    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ExpVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method protected defaultValue(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/Expression;",
            "TD;)",
            "Lgnu/expr/Expression;"
        }
    .end annotation

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpExpVisitor;, "Lgnu/expr/ExpExpVisitor<TD;>;"
    move-object v1, p1

    .local v1, "r":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ExpExpVisitor;, "Lgnu/expr/ExpExpVisitor<TD;>;"
    return-object v0
.end method

.method protected bridge synthetic defaultValue(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpExpVisitor;, "Lgnu/expr/ExpExpVisitor<TD;>;"
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ExpExpVisitor;->defaultValue(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ExpExpVisitor;, "Lgnu/expr/ExpExpVisitor<TD;>;"
    return-object v0
.end method

.method protected update(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 4

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpExpVisitor;, "Lgnu/expr/ExpExpVisitor<TD;>;"
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "r":Lgnu/expr/Expression;
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ExpExpVisitor;, "Lgnu/expr/ExpExpVisitor<TD;>;"
    return-object v0
.end method

.method protected bridge synthetic update(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 6

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ExpExpVisitor;, "Lgnu/expr/ExpExpVisitor<TD;>;"
    move-object v1, p1

    .local v1, "x0":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Lgnu/expr/Expression;

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ExpExpVisitor;->update(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/ExpExpVisitor;, "Lgnu/expr/ExpExpVisitor<TD;>;"
    return-object v0
.end method
