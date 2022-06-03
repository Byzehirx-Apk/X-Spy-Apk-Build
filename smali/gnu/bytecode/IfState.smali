.class public Lgnu/bytecode/IfState;
.super Ljava/lang/Object;
.source "IfState.java"


# instance fields
.field doing_else:Z

.field end_label:Lgnu/bytecode/Label;

.field previous:Lgnu/bytecode/IfState;

.field stack_growth:I

.field start_stack_size:I

.field then_stacked_types:[Lgnu/bytecode/Type;


# direct methods
.method public constructor <init>(Lgnu/bytecode/CodeAttr;)V
    .locals 8

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/IfState;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v2, v0

    move-object v3, v1

    new-instance v4, Lgnu/bytecode/Label;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    invoke-direct {v2, v3, v4}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Label;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Label;)V
    .locals 5

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/IfState;
    move-object v1, p1

    .local v1, "code":Lgnu/bytecode/CodeAttr;
    move-object v2, p2

    .local v2, "endLabel":Lgnu/bytecode/Label;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 38
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iput-object v4, v3, Lgnu/bytecode/IfState;->previous:Lgnu/bytecode/IfState;

    .line 39
    move-object v3, v1

    move-object v4, v0

    iput-object v4, v3, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    .line 40
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    .line 41
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lgnu/bytecode/CodeAttr;->SP:I

    iput v4, v3, Lgnu/bytecode/IfState;->start_stack_size:I

    .line 42
    return-void
.end method
