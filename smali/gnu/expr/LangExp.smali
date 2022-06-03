.class public Lgnu/expr/LangExp;
.super Lgnu/expr/Expression;
.source "LangExp.java"


# instance fields
.field hook:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LangExp;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/Expression;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LangExp;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/expr/Expression;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/LangExp;->hook:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 7

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LangExp;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, p2

    .local v2, "target":Lgnu/expr/Target;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "compile called on LangExp"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getLangValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LangExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/LangExp;->hook:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/LangExp;
    return-object v0
.end method

.method protected mustCompile()Z
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LangExp;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/expr/LangExp;
    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 4

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LangExp;
    move-object v1, p1

    .local v1, "out":Lgnu/mapping/OutPort;
    move-object v2, v1

    const-string/jumbo v3, "(LangExp ???)"

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public setLangValue(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LangExp;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/LangExp;->hook:Ljava/lang/Object;

    return-void
.end method

.method protected visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor",
            "<TR;TD;>;TD;)TR;"
        }
    .end annotation

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LangExp;
    move-object v1, p1

    .local v1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    move-object v2, p2

    .local v2, "d":Ljava/lang/Object;, "TD;"
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/expr/ExpVisitor;->visitLangExp(Lgnu/expr/LangExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/expr/LangExp;
    return-object v0
.end method
