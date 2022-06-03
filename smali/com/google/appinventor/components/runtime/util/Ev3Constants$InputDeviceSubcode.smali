.class public Lcom/google/appinventor/components/runtime/util/Ev3Constants$InputDeviceSubcode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/Ev3Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputDeviceSubcode"
.end annotation


# static fields
.field public static final CAL_DEFAULT:B = 0x4t

.field public static final CAL_MAX:B = 0x8t

.field public static final CAL_MIN:B = 0x7t

.field public static final CAL_MINMAX:B = 0x3t

.field public static final CLR_ALL:B = 0xat

.field public static final CLR_CHANGES:B = 0x1at

.field public static final GET_BUMPS:B = 0x1ft

.field public static final GET_CHANGES:B = 0x19t

.field public static final GET_CONNECTION:B = 0xct

.field public static final GET_FIGURES:B = 0x18t

.field public static final GET_FORMAT:B = 0x2t

.field public static final GET_MINMAX:B = 0x1et

.field public static final GET_MODENAME:B = 0x16t

.field public static final GET_NAME:B = 0x15t

.field public static final GET_RAW:B = 0xbt

.field public static final GET_SYMBOL:B = 0x6t

.field public static final GET_TYPEMODE:B = 0x5t

.field public static final READY_PCT:B = 0x1bt

.field public static final READY_RAW:B = 0x1ct

.field public static final READY_SI:B = 0x1dt

.field public static final SETUP:B = 0x9t

.field public static final SET_RAW:B = 0x17t

.field public static final STOP_ALL:B = 0xdt


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 273
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
