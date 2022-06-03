.class public abstract Lgnu/expr/AccessExp;
.super Lgnu/expr/Expression;
.source "AccessExp.java"


# instance fields
.field binding:Lgnu/expr/Declaration;

.field private context:Lgnu/expr/Declaration;

.field symbol:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/expr/AccessExp;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/Expression;-><init>()V

    return-void
.end method


# virtual methods
.method public final contextDecl()Lgnu/expr/Declaration;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lgnu/expr/AccessExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/AccessExp;->context:Lgnu/expr/Declaration;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/AccessExp;
    return-object v0
.end method

.method public final getBinding()Lgnu/expr/Declaration;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lgnu/expr/AccessExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/AccessExp;->binding:Lgnu/expr/Declaration;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/AccessExp;
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/expr/AccessExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/AccessExp;->symbol:Ljava/lang/Object;

    instance-of v1, v1, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/AccessExp;->symbol:Ljava/lang/Object;

    check-cast v1, Lgnu/mapping/Symbol;

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/AccessExp;
    return-object v0

    .restart local v0    # "this":Lgnu/expr/AccessExp;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/AccessExp;->symbol:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final getSimpleName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/expr/AccessExp;
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/AccessExp;->symbol:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 28
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/AccessExp;->symbol:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    .line 33
    .end local v0    # "this":Lgnu/expr/AccessExp;
    .local v1, "sym":Lgnu/mapping/Symbol;
    :goto_0
    return-object v0

    .line 30
    .end local v1    # "sym":Lgnu/mapping/Symbol;
    .restart local v0    # "this":Lgnu/expr/AccessExp;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/AccessExp;->symbol:Ljava/lang/Object;

    instance-of v2, v2, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/AccessExp;->symbol:Ljava/lang/Object;

    check-cast v2, Lgnu/mapping/Symbol;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    move-object v1, v3

    .restart local v1    # "sym":Lgnu/mapping/Symbol;
    invoke-virtual {v2}, Lgnu/mapping/Symbol;->hasEmptyNamespace()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 33
    .end local v1    # "sym":Lgnu/mapping/Symbol;
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public final getSymbol()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lgnu/expr/AccessExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/AccessExp;->symbol:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/AccessExp;
    return-object v0
.end method

.method public final setBinding(Lgnu/expr/Declaration;)V
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lgnu/expr/AccessExp;
    move-object v1, p1

    .local v1, "decl":Lgnu/expr/Declaration;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/AccessExp;->binding:Lgnu/expr/Declaration;

    return-void
.end method

.method public final setContextDecl(Lgnu/expr/Declaration;)V
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lgnu/expr/AccessExp;
    move-object v1, p1

    .local v1, "decl":Lgnu/expr/Declaration;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/expr/AccessExp;->context:Lgnu/expr/Declaration;

    return-void
.end method

.method public string_name()Ljava/lang/String;
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lgnu/expr/AccessExp;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/AccessExp;->symbol:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/AccessExp;
    return-object v0
.end method
