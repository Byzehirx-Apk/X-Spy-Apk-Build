.class public Lcom/google/appinventor/components/runtime/util/Ev3Constants$DirectReplyType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/Ev3Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DirectReplyType"
.end annotation


# static fields
.field public static final DIRECT_REPLY:B = 0x2t

.field public static final DIRECT_REPLY_ERROR:B = 0x4t


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 481
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
