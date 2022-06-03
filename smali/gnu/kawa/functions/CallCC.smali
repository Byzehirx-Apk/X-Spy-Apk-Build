.class public Lgnu/kawa/functions/CallCC;
.super Lgnu/mapping/MethodProc;
.source "CallCC.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final callcc:Lgnu/kawa/functions/CallCC;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    new-instance v0, Lgnu/kawa/functions/CallCC;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/kawa/functions/CallCC;-><init>()V

    sput-object v0, Lgnu/kawa/functions/CallCC;->callcc:Lgnu/kawa/functions/CallCC;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/CallCC;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/MethodProc;-><init>()V

    .line 19
    move-object v1, v0

    sget-object v2, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v3, "gnu.kawa.functions.CompileMisc:validateApplyCallCC"

    invoke-virtual {v1, v2, v3}, Lgnu/kawa/functions/CallCC;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/CallCC;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v5, v1

    iget-object v5, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    check-cast v5, Lgnu/mapping/Procedure;

    move-object v2, v5

    .line 35
    .local v2, "proc":Lgnu/mapping/Procedure;
    new-instance v5, Lkawa/lang/Continuation;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Lkawa/lang/Continuation;-><init>(Lgnu/mapping/CallContext;)V

    move-object v3, v5

    .line 36
    .local v3, "cont":Lkawa/lang/Continuation;
    move-object v5, v2

    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 37
    move-object v5, v1

    iget-object v5, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v2, v5

    .line 38
    move-object v5, v1

    const/4 v6, 0x0

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 41
    move-object v5, v2

    move-object v6, v1

    :try_start_0
    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply(Lgnu/mapping/CallContext;)V

    .line 42
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/mapping/CallContext;->runUntilDone()V

    .line 43
    move-object v5, v3

    const/4 v6, 0x1

    iput-boolean v6, v5, Lkawa/lang/Continuation;->invoked:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 47
    .local v4, "ex":Ljava/lang/Throwable;
    move-object v5, v4

    move-object v6, v3

    move-object v7, v1

    invoke-static {v5, v6, v7}, Lkawa/lang/Continuation;->handleException$X(Ljava/lang/Throwable;Lkawa/lang/Continuation;Lgnu/mapping/CallContext;)V

    goto :goto_0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 8

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/CallCC;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/ApplyExp;
    move-object v2, p2

    .local v2, "comp":Lgnu/expr/Compilation;
    move-object v3, p3

    .local v3, "target":Lgnu/expr/Target;
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    move-object v7, v0

    invoke-static {v4, v5, v6, v7}, Lgnu/kawa/functions/CompileMisc;->compileCallCC(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/mapping/Procedure;)V

    .line 64
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/CallCC;
    move-object v1, p1

    .local v1, "args":[Lgnu/expr/Expression;
    sget-object v2, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/functions/CallCC;
    return-object v0
.end method

.method public match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 6

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/CallCC;
    move-object v1, p1

    .local v1, "proc":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "ctx":Lgnu/mapping/CallContext;
    move-object v3, v1

    instance-of v3, v3, Lgnu/mapping/Procedure;

    if-nez v3, :cond_0

    .line 28
    const/high16 v3, -0xc0000

    move v0, v3

    .line 29
    .end local v0    # "this":Lgnu/kawa/functions/CallCC;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/kawa/functions/CallCC;
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/mapping/MethodProc;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public numArgs()I
    .locals 2

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/CallCC;
    const/16 v1, 0x1001

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/functions/CallCC;
    return v0
.end method
