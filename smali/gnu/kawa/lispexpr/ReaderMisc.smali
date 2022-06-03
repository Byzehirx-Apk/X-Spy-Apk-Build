.class public Lgnu/kawa/lispexpr/ReaderMisc;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderMisc.java"


# instance fields
.field kind:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReaderMisc;
    move v1, p1

    .local v1, "kind":I
    move-object v2, v0

    invoke-direct {v2}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/kawa/lispexpr/ReaderMisc;->kind:I

    return-void
.end method


# virtual methods
.method public getKind()I
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/lispexpr/ReaderMisc;
    move-object v1, v0

    iget v1, v1, Lgnu/kawa/lispexpr/ReaderMisc;->kind:I

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/lispexpr/ReaderMisc;
    return v0
.end method
