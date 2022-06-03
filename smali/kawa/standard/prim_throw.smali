.class public Lkawa/standard/prim_throw;
.super Lgnu/mapping/Procedure1;
.source "prim_throw.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field private static javaThrowableType:Lgnu/bytecode/ClassType;

.field public static final primitiveThrow:Lkawa/standard/prim_throw;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 8
    new-instance v0, Lkawa/standard/prim_throw;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lkawa/standard/prim_throw;-><init>()V

    sput-object v0, Lkawa/standard/prim_throw;->primitiveThrow:Lkawa/standard/prim_throw;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "this":Lkawa/standard/prim_throw;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/Procedure1;-><init>()V

    return-void
.end method

.method public static throw_it(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "arg1":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lkawa/standard/prim_throw;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, v1

    invoke-static {v2}, Lkawa/standard/prim_throw;->throw_it(Ljava/lang/Object;)V

    .line 20
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v2

    .end local v0    # "this":Lkawa/standard/prim_throw;
    return-object v0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 9

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lkawa/standard/prim_throw;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v3, p3

    .local v3, "target":Lgnu/expr/Target;
    move-object v5, v2

    invoke-virtual {v5}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v5

    move-object v4, v5

    .line 29
    .local v4, "code":Lgnu/bytecode/CodeAttr;
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object v6, v2

    sget-object v7, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 30
    sget-object v5, Lkawa/standard/prim_throw;->javaThrowableType:Lgnu/bytecode/ClassType;

    if-nez v5, :cond_0

    .line 31
    new-instance v5, Lgnu/bytecode/ClassType;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "java.lang.Throwable"

    invoke-direct {v6, v7}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    sput-object v5, Lkawa/standard/prim_throw;->javaThrowableType:Lgnu/bytecode/ClassType;

    .line 32
    :cond_0
    move-object v5, v4

    sget-object v6, Lkawa/standard/prim_throw;->javaThrowableType:Lgnu/bytecode/ClassType;

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    .line 33
    move-object v5, v4

    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitThrow()V

    .line 34
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lkawa/standard/prim_throw;
    move-object v1, p1

    .local v1, "args":[Lgnu/expr/Expression;
    sget-object v2, Lgnu/bytecode/Type;->neverReturnsType:Lgnu/bytecode/PrimType;

    move-object v0, v2

    .end local v0    # "this":Lkawa/standard/prim_throw;
    return-object v0
.end method
