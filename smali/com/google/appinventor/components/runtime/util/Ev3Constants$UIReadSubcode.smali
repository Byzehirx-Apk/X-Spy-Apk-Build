.class public Lcom/google/appinventor/components/runtime/util/Ev3Constants$UIReadSubcode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/Ev3Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UIReadSubcode"
.end annotation


# static fields
.field public static final GET_ADDRESS:B = 0xdt

.field public static final GET_CODE:B = 0xet

.field public static final GET_EVENT:B = 0x4t

.field public static final GET_FW_BUILD:B = 0xbt

.field public static final GET_FW_VERS:B = 0xat

.field public static final GET_HW_VERS:B = 0x9t

.field public static final GET_IBATT:B = 0x2t

.field public static final GET_IINT:B = 0x6t

.field public static final GET_IMOTOR:B = 0x7t

.field public static final GET_IP:B = 0x1bt

.field public static final GET_LBATT:B = 0x12t

.field public static final GET_OS_BUILD:B = 0xct

.field public static final GET_OS_VERS:B = 0x3t

.field public static final GET_POWER:B = 0x1dt

.field public static final GET_SDCARD:B = 0x1et

.field public static final GET_SHUTDOWN:B = 0x10t

.field public static final GET_STRING:B = 0x8t

.field public static final GET_TBATT:B = 0x5t

.field public static final GET_USBSTICK:B = 0x1ft

.field public static final GET_VBATT:B = 0x1t

.field public static final GET_VERSION:B = 0x1at

.field public static final GET_WARNING:B = 0x11t

.field public static final KEY:B = 0xft

.field public static final TEXTBOX_READ:B = 0x15t


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 331
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
