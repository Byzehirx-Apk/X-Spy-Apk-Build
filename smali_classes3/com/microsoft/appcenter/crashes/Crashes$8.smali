.class Lcom/microsoft/appcenter/crashes/Crashes$8;
.super Ljava/lang/Object;
.source "Crashes.java"

# interfaces
.implements Lcom/microsoft/appcenter/crashes/Crashes$ExceptionModelBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/crashes/Crashes;->queueException(Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;Ljava/util/Map;Ljava/lang/Iterable;)Ljava/util/UUID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/crashes/Crashes;

.field final synthetic val$modelException:Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/crashes/Crashes;Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;)V
    .locals 5

    .prologue
    .line 634
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes$8;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/microsoft/appcenter/crashes/Crashes$8;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/microsoft/appcenter/crashes/Crashes$8;->val$modelException:Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildExceptionModel()Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    .locals 2

    .prologue
    .line 638
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes$8;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/Crashes$8;->val$modelException:Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/Crashes$8;
    return-object v0
.end method
