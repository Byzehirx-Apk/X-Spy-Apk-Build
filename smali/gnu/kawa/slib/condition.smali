.class public Lgnu/kawa/slib/condition;
.super Ljava/lang/RuntimeException;
.source "conditions.scm"


# instance fields
.field public type$Mnfield$Mnalist:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 107
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    .line 108
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/slib/condition;->type$Mnfield$Mnalist:Ljava/lang/Object;

    return-void
.end method
