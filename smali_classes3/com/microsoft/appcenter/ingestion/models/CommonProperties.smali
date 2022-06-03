.class public final Lcom/microsoft/appcenter/ingestion/models/CommonProperties;
.super Ljava/lang/Object;
.source "CommonProperties.java"


# static fields
.field public static final FRAMES:Ljava/lang/String; = "frames"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPED_PROPERTIES:Ljava/lang/String; = "typedProperties"

.field public static final VALUE:Ljava/lang/String; = "value"


# direct methods
.method constructor <init>()V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/CommonProperties;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method
