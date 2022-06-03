.class public abstract Lgnu/expr/Initializer;
.super Ljava/lang/Object;
.source "Initializer.java"


# instance fields
.field public field:Lgnu/bytecode/Field;

.field next:Lgnu/expr/Initializer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Initializer;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reverse(Lgnu/expr/Initializer;)Lgnu/expr/Initializer;
    .locals 5

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "list":Lgnu/expr/Initializer;
    const/4 v3, 0x0

    move-object v1, v3

    .line 19
    .local v1, "prev":Lgnu/expr/Initializer;
    :goto_0
    move-object v3, v0

    if-eqz v3, :cond_0

    .line 21
    move-object v3, v0

    iget-object v3, v3, Lgnu/expr/Initializer;->next:Lgnu/expr/Initializer;

    move-object v2, v3

    .line 22
    .local v2, "next":Lgnu/expr/Initializer;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/expr/Initializer;->next:Lgnu/expr/Initializer;

    .line 23
    move-object v3, v0

    move-object v1, v3

    .line 24
    move-object v3, v2

    move-object v0, v3

    .line 25
    goto :goto_0

    .line 26
    .end local v2    # "next":Lgnu/expr/Initializer;
    :cond_0
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "list":Lgnu/expr/Initializer;
    return-object v0
.end method


# virtual methods
.method public abstract emit(Lgnu/expr/Compilation;)V
.end method

.method public reportError(Ljava/lang/String;Lgnu/expr/Compilation;)V
    .locals 8

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Initializer;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v3, v2

    const/16 v4, 0x65

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "field "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lgnu/expr/Initializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 32
    return-void
.end method
