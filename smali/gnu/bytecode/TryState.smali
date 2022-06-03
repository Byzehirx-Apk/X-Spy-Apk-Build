.class public Lgnu/bytecode/TryState;
.super Ljava/lang/Object;
.source "TryState.java"


# instance fields
.field end_label:Lgnu/bytecode/Label;

.field end_try:Lgnu/bytecode/Label;

.field exception:Lgnu/bytecode/Variable;

.field exitCases:Lgnu/bytecode/ExitableBlock;

.field finally_ret_addr:Lgnu/bytecode/Variable;

.field finally_subr:Lgnu/bytecode/Label;

.field previous:Lgnu/bytecode/TryState;

.field savedStack:[Lgnu/bytecode/Variable;

.field savedTypes:[Lgnu/bytecode/Type;

.field saved_result:Lgnu/bytecode/Variable;

.field start_try:Lgnu/bytecode/Label;

.field tryClauseDone:Z

.field try_type:Lgnu/bytecode/ClassType;


# direct methods
.method public constructor <init>(Lgnu/bytecode/CodeAttr;)V
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/TryState;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 46
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iput-object v3, v2, Lgnu/bytecode/TryState;->previous:Lgnu/bytecode/TryState;

    .line 47
    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    .line 48
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->getLabel()Lgnu/bytecode/Label;

    move-result-object v3

    iput-object v3, v2, Lgnu/bytecode/TryState;->start_try:Lgnu/bytecode/Label;

    .line 49
    return-void
.end method

.method static outerHandler(Lgnu/bytecode/TryState;Lgnu/bytecode/TryState;)Lgnu/bytecode/TryState;
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "innerTry":Lgnu/bytecode/TryState;
    move-object v1, p1

    .local v1, "outerTry":Lgnu/bytecode/TryState;
    :goto_0
    move-object v2, v0

    move-object v3, v1

    if-eq v2, v3, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Lgnu/bytecode/TryState;->tryClauseDone:Z

    if-eqz v2, :cond_1

    .line 57
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lgnu/bytecode/TryState;->previous:Lgnu/bytecode/TryState;

    move-object v0, v2

    goto :goto_0

    .line 58
    :cond_1
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "innerTry":Lgnu/bytecode/TryState;
    return-object v0
.end method
