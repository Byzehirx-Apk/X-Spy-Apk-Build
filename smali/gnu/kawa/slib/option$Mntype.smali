.class public Lgnu/kawa/slib/option$Mntype;
.super Ljava/lang/Object;
.source "srfi37.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/kawa/slib/srfi37;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Mntype"
.end annotation


# instance fields
.field public names:Ljava/lang/Object;

.field public optional$Mnarg$Qu:Ljava/lang/Object;

.field public processor:Ljava/lang/Object;

.field public required$Mnarg$Qu:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
