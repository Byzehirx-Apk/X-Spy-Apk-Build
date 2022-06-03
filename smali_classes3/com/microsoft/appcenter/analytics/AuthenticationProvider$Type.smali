.class public final enum Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;
.super Ljava/lang/Enum;
.source "AuthenticationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/analytics/AuthenticationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;

.field public static final enum MSA_COMPACT:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;

.field public static final enum MSA_DELEGATE:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;


# instance fields
.field private final mTokenPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 186
    new-instance v0, Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "MSA_COMPACT"

    const/4 v3, 0x0

    const-string/jumbo v4, "p"

    invoke-direct {v1, v2, v3, v4}, Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;->MSA_COMPACT:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;

    .line 191
    new-instance v0, Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "MSA_DELEGATE"

    const/4 v3, 0x1

    const-string/jumbo v4, "d"

    invoke-direct {v1, v2, v3, v4}, Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;->MSA_DELEGATE:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;

    .line 181
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x0

    sget-object v3, Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;->MSA_COMPACT:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x1

    sget-object v3, Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;->MSA_DELEGATE:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;

    aput-object v3, v1, v2

    sput-object v0, Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;->$VALUES:[Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .local v3, "tokenPrefix":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 204
    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;->mTokenPrefix:Ljava/lang/String;

    .line 205
    return-void
.end method

.method static synthetic access$100(Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "x0":Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;->mTokenPrefix:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "x0":Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;
    .locals 3

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;->$VALUES:[Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;

    invoke-virtual {v0}, [Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;

    return-object v0
.end method
