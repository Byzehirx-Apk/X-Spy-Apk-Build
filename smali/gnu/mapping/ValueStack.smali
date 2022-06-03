.class public Lgnu/mapping/ValueStack;
.super Lgnu/mapping/Values;
.source "ValueStack.java"

# interfaces
.implements Lgnu/lists/Sequence;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ValueStack;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/Values;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/mapping/ValueStack;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lgnu/mapping/ValueStack;->oindex:I

    .line 12
    move-object v1, v0

    invoke-super {v1}, Lgnu/mapping/Values;->clear()V

    .line 13
    return-void
.end method
