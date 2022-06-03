.class public Lcom/google/appinventor/components/runtime/util/SdkLevel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LEVEL_CUPCAKE:I = 0x3

.field public static final LEVEL_DONUT:I = 0x4

.field public static final LEVEL_ECLAIR:I = 0x5

.field public static final LEVEL_ECLAIR_0_1:I = 0x6

.field public static final LEVEL_ECLAIR_MR1:I = 0x7

.field public static final LEVEL_FROYO:I = 0x8

.field public static final LEVEL_GINGERBREAD:I = 0x9

.field public static final LEVEL_GINGERBREAD_MR1:I = 0xa

.field public static final LEVEL_HONEYCOMB:I = 0xb

.field public static final LEVEL_HONEYCOMB_MR1:I = 0xc

.field public static final LEVEL_ICE_CREAM_SANDWICH:I = 0xe

.field public static final LEVEL_JELLYBEAN:I = 0x10

.field public static final LEVEL_JELLYBEAN_MR1:I = 0x11

.field public static final LEVEL_JELLYBEAN_MR2:I = 0x12

.field public static final LEVEL_KITKAT:I = 0x13

.field public static final LEVEL_LOLLIPOP:I = 0x15

.field public static final LEVEL_MARSHMALLOW:I = 0x17

.field public static final LEVEL_NOUGAT:I = 0x18

.field public static final LEVEL_OREO:I = 0x1a

.field public static final LEVEL_PIE:I = 0x1c


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static getLevel()I
    .locals 1

    .prologue
    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method
