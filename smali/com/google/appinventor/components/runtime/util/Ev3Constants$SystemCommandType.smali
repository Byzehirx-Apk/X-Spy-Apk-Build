.class public Lcom/google/appinventor/components/runtime/util/Ev3Constants$SystemCommandType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/Ev3Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemCommandType"
.end annotation


# static fields
.field public static final SYSTEM_COMMAND_NO_REPLY:B = -0x7ft

.field public static final SYSTEM_COMMAND_REPLY:B = 0x1t


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 432
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
