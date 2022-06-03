.class public Lcom/google/appinventor/components/runtime/util/Ev3Constants$SystemReplyStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/Ev3Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemReplyStatus"
.end annotation


# static fields
.field public static final CORRUPT_FILE:B = 0x3t

.field public static final END_OF_FILE:B = 0x8t

.field public static final FILE_EXITS:B = 0x7t

.field public static final HANDLE_NOT_READY:B = 0x2t

.field public static final ILLEGAL_CONNECTION:B = 0xct

.field public static final ILLEGAL_FILENAME:B = 0xbt

.field public static final ILLEGAL_PATH:B = 0x6t

.field public static final NO_HANDLES_AVAILABLE:B = 0x4t

.field public static final NO_PERMISSION:B = 0x5t

.field public static final SIZE_ERROR:B = 0x9t

.field public static final SUCCESS:B = 0x0t

.field public static final UNKNOWN_ERROR:B = 0xat

.field public static final UNKNOWN_HANDLE:B = 0x1t


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 460
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
