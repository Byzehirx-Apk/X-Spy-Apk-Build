.class public final Lcom/microsoft/appcenter/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final APPLICATION_ID:Ljava/lang/String; = "com.microsoft.appcenter"

.field public static final BUILD_TYPE:Ljava/lang/String; = "release"

.field public static final DEBUG:Z = false

.field public static final FLAVOR:Ljava/lang/String; = ""

.field public static final MIN_SDK_VERSION:I = 0x10

.field public static final SDK_NAME:Ljava/lang/String; = "appcenter.android"

.field public static final TARGET_SDK_VERSION:I = 0x1d

.field public static final VERSION_CODE:I = 0x3a

.field public static final VERSION_NAME:Ljava/lang/String; = "3.3.0"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/BuildConfig;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
