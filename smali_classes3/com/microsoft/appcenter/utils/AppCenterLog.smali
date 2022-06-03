.class public Lcom/microsoft/appcenter/utils/AppCenterLog;
.super Ljava/lang/Object;
.source "AppCenterLog.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "AppCenter"

.field public static final NONE:I = 0x8

.field private static sLogLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x7

    sput v0, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/AppCenterLog;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "tag":Ljava/lang/String;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    sget v2, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    const/4 v3, 0x3

    if-gt v2, v3, :cond_0

    .line 94
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 96
    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "tag":Ljava/lang/String;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "throwable":Ljava/lang/Throwable;
    sget v3, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    const/4 v4, 0x3

    if-gt v3, v4, :cond_0

    .line 107
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 109
    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "tag":Ljava/lang/String;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    sget v2, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    const/4 v3, 0x6

    if-gt v2, v3, :cond_0

    .line 170
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 172
    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "tag":Ljava/lang/String;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "throwable":Ljava/lang/Throwable;
    sget v3, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    const/4 v4, 0x6

    if-gt v3, v4, :cond_0

    .line 183
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 185
    :cond_0
    return-void
.end method

.method public static getLogLevel()I
    .locals 1
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x2L
        to = 0x8L
    .end annotation

    .prologue
    .line 48
    sget v0, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    return v0
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "tag":Ljava/lang/String;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    sget v2, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    .line 119
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 121
    :cond_0
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "tag":Ljava/lang/String;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "throwable":Ljava/lang/Throwable;
    sget v3, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    const/4 v4, 0x4

    if-gt v3, v4, :cond_0

    .line 133
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 135
    :cond_0
    return-void
.end method

.method public static logAssert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "tag":Ljava/lang/String;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    sget v2, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    const/4 v3, 0x7

    if-gt v2, v3, :cond_0

    .line 196
    const/4 v2, 0x7

    move-object v3, v0

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 198
    :cond_0
    return-void
.end method

.method public static logAssert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "tag":Ljava/lang/String;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "throwable":Ljava/lang/Throwable;
    sget v3, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    const/4 v4, 0x7

    if-gt v3, v4, :cond_0

    .line 210
    const/4 v3, 0x7

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 212
    :cond_0
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 2
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x2L
            to = 0x8L
        .end annotation
    .end param

    .prologue
    .line 57
    move v0, p0

    .local v0, "logLevel":I
    move v1, v0

    sput v1, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    .line 58
    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "tag":Ljava/lang/String;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    sget v2, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    const/4 v3, 0x2

    if-gt v2, v3, :cond_0

    .line 68
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 70
    :cond_0
    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "tag":Ljava/lang/String;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "throwable":Ljava/lang/Throwable;
    sget v3, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    const/4 v4, 0x2

    if-gt v3, v4, :cond_0

    .line 82
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 84
    :cond_0
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "tag":Ljava/lang/String;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    sget v2, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    const/4 v3, 0x5

    if-gt v2, v3, :cond_0

    .line 145
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 147
    :cond_0
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "tag":Ljava/lang/String;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "throwable":Ljava/lang/Throwable;
    sget v3, Lcom/microsoft/appcenter/utils/AppCenterLog;->sLogLevel:I

    const/4 v4, 0x5

    if-gt v3, v4, :cond_0

    .line 158
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 160
    :cond_0
    return-void
.end method
