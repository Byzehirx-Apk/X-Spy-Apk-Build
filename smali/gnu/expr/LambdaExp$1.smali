.class Lgnu/expr/LambdaExp$1;
.super Ljava/lang/Object;
.source "LambdaExp.java"

# interfaces
.implements Lgnu/bytecode/Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/expr/LambdaExp;->addMethodFor(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/bytecode/ObjectType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgnu/expr/LambdaExp;

.field final synthetic val$mangled:Ljava/lang/String;


# direct methods
.method constructor <init>(Lgnu/expr/LambdaExp;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 932
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp$1;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/expr/LambdaExp$1;->this$0:Lgnu/expr/LambdaExp;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/expr/LambdaExp$1;->val$mangled:Ljava/lang/String;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public select(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 935
    move-object v0, p0

    .local v0, "this":Lgnu/expr/LambdaExp$1;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v4, v1

    check-cast v4, Lgnu/bytecode/Method;

    move-object v2, v4

    .line 936
    .local v2, "method":Lgnu/bytecode/Method;
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/LambdaExp$1;->val$mangled:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 937
    const/4 v4, 0x0

    move v0, v4

    .line 939
    .end local v0    # "this":Lgnu/expr/LambdaExp$1;
    :goto_0
    return v0

    .line 938
    .restart local v0    # "this":Lgnu/expr/LambdaExp$1;
    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v4

    move-object v3, v4

    .line 939
    .local v3, "ptypes":[Lgnu/bytecode/Type;
    move-object v4, v3

    array-length v4, v4

    move-object v5, v0

    iget-object v5, v5, Lgnu/expr/LambdaExp$1;->this$0:Lgnu/expr/LambdaExp;

    iget v5, v5, Lgnu/expr/LambdaExp;->min_args:I

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
