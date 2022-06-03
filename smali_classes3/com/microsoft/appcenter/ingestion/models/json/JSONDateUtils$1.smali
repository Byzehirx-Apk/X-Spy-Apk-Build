.class final Lcom/microsoft/appcenter/ingestion/models/json/JSONDateUtils$1;
.super Ljava/lang/ThreadLocal;
.source "JSONDateUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/ingestion/models/json/JSONDateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/text/DateFormat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/json/JSONDateUtils$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/json/JSONDateUtils$1;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/microsoft/appcenter/ingestion/models/json/JSONDateUtils$1;->initialValue()Ljava/text/DateFormat;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/json/JSONDateUtils$1;
    return-object v0
.end method

.method protected initialValue()Ljava/text/DateFormat;
    .locals 7

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/json/JSONDateUtils$1;
    new-instance v2, Ljava/text/SimpleDateFormat;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v1, v2

    .line 32
    .local v1, "dateFormat":Ljava/text/DateFormat;
    move-object v2, v1

    const-string/jumbo v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 33
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/json/JSONDateUtils$1;
    return-object v0
.end method
