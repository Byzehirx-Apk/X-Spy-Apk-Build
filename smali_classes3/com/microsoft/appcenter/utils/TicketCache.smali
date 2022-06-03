.class public Lcom/microsoft/appcenter/utils/TicketCache;
.super Ljava/lang/Object;
.source "TicketCache.java"


# static fields
.field private static final sTickets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    new-instance v0, Ljava/util/HashMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/microsoft/appcenter/utils/TicketCache;->sTickets:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/TicketCache;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 45
    sget-object v0, Lcom/microsoft/appcenter/utils/TicketCache;->sTickets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 46
    return-void
.end method

.method public static getTicket(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "key":Ljava/lang/String;
    sget-object v1, Lcom/microsoft/appcenter/utils/TicketCache;->sTickets:Ljava/util/Map;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "key":Ljava/lang/String;
    return-object v0
.end method

.method public static putTicket(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "key":Ljava/lang/String;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    sget-object v2, Lcom/microsoft/appcenter/utils/TicketCache;->sTickets:Ljava/util/Map;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 41
    return-void
.end method
