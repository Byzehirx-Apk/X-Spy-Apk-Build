.class Landroidx/appcompat/app/TwilightManager$TwilightState;
.super Ljava/lang/Object;
.source "TwilightManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/TwilightManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwilightState"
.end annotation


# instance fields
.field isNight:Z

.field nextUpdate:J

.field todaySunrise:J

.field todaySunset:J

.field tomorrowSunrise:J

.field yesterdaySunset:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/TwilightManager$TwilightState;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 206
    return-void
.end method
