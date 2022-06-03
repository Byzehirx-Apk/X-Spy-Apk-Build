.class public Lcom/google/appinventor/components/runtime/util/Ev3Constants$SystemCommand;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/Ev3Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemCommand"
.end annotation


# static fields
.field public static final BEGIN_DOWNLOAD:B = -0x6et

.field public static final BEGIN_GETFILE:B = -0x6at

.field public static final BEGIN_UPLOAD:B = -0x6ct

.field public static final BLUETOOTHPIN:B = -0x61t

.field public static final CLOSE_FILEHANDLE:B = -0x68t

.field public static final CONTINUE_DOWNLOAD:B = -0x6dt

.field public static final CONTINUE_GETFILE:B = -0x69t

.field public static final CONTINUE_LIST_FILES:B = -0x66t

.field public static final CONTINUE_UPLOAD:B = -0x6bt

.field public static final CREATE_DIR:B = -0x65t

.field public static final DELETE_FILE:B = -0x64t

.field public static final ENTERFWUPDATE:B = -0x60t

.field public static final LIST_FILES:B = -0x67t

.field public static final LIST_OPEN_HANDLES:B = -0x63t

.field public static final WRITEMAILBOX:B = -0x62t


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 437
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
