.class public Lcom/google/appinventor/components/runtime/util/Ev3Constants$DirectCommandType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/Ev3Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DirectCommandType"
.end annotation


# static fields
.field public static final DIRECT_COMMAND_NO_REPLY:B = -0x80t

.field public static final DIRECT_COMMAND_REPLY:B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 476
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
