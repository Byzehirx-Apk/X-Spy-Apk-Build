.class public Lcom/airbnb/lottie/utils/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static INSTANCE:Lcom/airbnb/lottie/LottieLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    new-instance v0, Lcom/airbnb/lottie/utils/LogcatLogger;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/airbnb/lottie/utils/LogcatLogger;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/utils/Logger;->INSTANCE:Lcom/airbnb/lottie/LottieLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/utils/Logger;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "message":Ljava/lang/String;
    sget-object v1, Lcom/airbnb/lottie/utils/Logger;->INSTANCE:Lcom/airbnb/lottie/LottieLogger;

    move-object v2, v0

    invoke-interface {v1, v2}, Lcom/airbnb/lottie/LottieLogger;->debug(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "message":Ljava/lang/String;
    move-object v1, p1

    .local v1, "exception":Ljava/lang/Throwable;
    sget-object v2, Lcom/airbnb/lottie/utils/Logger;->INSTANCE:Lcom/airbnb/lottie/LottieLogger;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Lcom/airbnb/lottie/LottieLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    return-void
.end method

.method public static setInstance(Lcom/airbnb/lottie/LottieLogger;)V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "instance":Lcom/airbnb/lottie/LottieLogger;
    move-object v1, v0

    sput-object v1, Lcom/airbnb/lottie/utils/Logger;->INSTANCE:Lcom/airbnb/lottie/LottieLogger;

    .line 15
    return-void
.end method

.method public static warning(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "message":Ljava/lang/String;
    sget-object v1, Lcom/airbnb/lottie/utils/Logger;->INSTANCE:Lcom/airbnb/lottie/LottieLogger;

    move-object v2, v0

    invoke-interface {v1, v2}, Lcom/airbnb/lottie/LottieLogger;->warning(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "message":Ljava/lang/String;
    move-object v1, p1

    .local v1, "exception":Ljava/lang/Throwable;
    sget-object v2, Lcom/airbnb/lottie/utils/Logger;->INSTANCE:Lcom/airbnb/lottie/LottieLogger;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Lcom/airbnb/lottie/LottieLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    return-void
.end method
