.class public Lcom/microsoft/appcenter/utils/DeviceInfoHelper$DeviceInfoException;
.super Ljava/lang/Exception;
.source "DeviceInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/utils/DeviceInfoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceInfoException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/DeviceInfoHelper$DeviceInfoException;
    move-object v1, p1

    .local v1, "detailMessage":Ljava/lang/String;
    move-object v2, p2

    .local v2, "throwable":Ljava/lang/Throwable;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    return-void
.end method
