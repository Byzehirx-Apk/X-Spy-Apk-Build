.class public final Lcom/microsoft/appcenter/ingestion/models/json/JSONDateUtils;
.super Ljava/lang/Object;
.source "JSONDateUtils.java"


# static fields
.field private static final DATE_FORMAT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lcom/microsoft/appcenter/ingestion/models/json/JSONDateUtils$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/microsoft/appcenter/ingestion/models/json/JSONDateUtils$1;-><init>()V

    sput-object v0, Lcom/microsoft/appcenter/ingestion/models/json/JSONDateUtils;->DATE_FORMAT:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/json/JSONDateUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkNull(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "date":Ljava/lang/Object;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lorg/json/JSONException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "date cannot be null"

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_0
    return-void
.end method

.method public static toDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "date":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v2}, Lcom/microsoft/appcenter/ingestion/models/json/JSONDateUtils;->checkNull(Ljava/lang/Object;)V

    .line 71
    :try_start_0
    sget-object v2, Lcom/microsoft/appcenter/ingestion/models/json/JSONDateUtils;->DATE_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/DateFormat;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .end local v0    # "date":Ljava/lang/String;
    return-object v0

    .line 72
    .restart local v0    # "date":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 73
    .local v1, "e":Ljava/text/ParseException;
    new-instance v2, Lorg/json/JSONException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-virtual {v4}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static toString(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "date":Ljava/util/Date;
    move-object v1, v0

    invoke-static {v1}, Lcom/microsoft/appcenter/ingestion/models/json/JSONDateUtils;->checkNull(Ljava/lang/Object;)V

    .line 58
    sget-object v1, Lcom/microsoft/appcenter/ingestion/models/json/JSONDateUtils;->DATE_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DateFormat;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "date":Ljava/util/Date;
    return-object v0
.end method
