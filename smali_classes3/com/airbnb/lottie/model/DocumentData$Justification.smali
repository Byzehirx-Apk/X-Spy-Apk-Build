.class public final enum Lcom/airbnb/lottie/model/DocumentData$Justification;
.super Ljava/lang/Enum;
.source "DocumentData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/DocumentData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Justification"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/lottie/model/DocumentData$Justification;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/lottie/model/DocumentData$Justification;

.field public static final enum CENTER:Lcom/airbnb/lottie/model/DocumentData$Justification;

.field public static final enum LEFT_ALIGN:Lcom/airbnb/lottie/model/DocumentData$Justification;

.field public static final enum RIGHT_ALIGN:Lcom/airbnb/lottie/model/DocumentData$Justification;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 12
    new-instance v0, Lcom/airbnb/lottie/model/DocumentData$Justification;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "LEFT_ALIGN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/airbnb/lottie/model/DocumentData$Justification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/model/DocumentData$Justification;->LEFT_ALIGN:Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 13
    new-instance v0, Lcom/airbnb/lottie/model/DocumentData$Justification;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "RIGHT_ALIGN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/airbnb/lottie/model/DocumentData$Justification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/model/DocumentData$Justification;->RIGHT_ALIGN:Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 14
    new-instance v0, Lcom/airbnb/lottie/model/DocumentData$Justification;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "CENTER"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/airbnb/lottie/model/DocumentData$Justification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/model/DocumentData$Justification;->CENTER:Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 11
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/airbnb/lottie/model/DocumentData$Justification;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/airbnb/lottie/model/DocumentData$Justification;->LEFT_ALIGN:Lcom/airbnb/lottie/model/DocumentData$Justification;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/airbnb/lottie/model/DocumentData$Justification;->RIGHT_ALIGN:Lcom/airbnb/lottie/model/DocumentData$Justification;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/airbnb/lottie/model/DocumentData$Justification;->CENTER:Lcom/airbnb/lottie/model/DocumentData$Justification;

    aput-object v3, v1, v2

    sput-object v0, Lcom/airbnb/lottie/model/DocumentData$Justification;->$VALUES:[Lcom/airbnb/lottie/model/DocumentData$Justification;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/model/DocumentData$Justification;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/model/DocumentData$Justification;
    .locals 3

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/airbnb/lottie/model/DocumentData$Justification;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/model/DocumentData$Justification;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/airbnb/lottie/model/DocumentData$Justification;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/airbnb/lottie/model/DocumentData$Justification;->$VALUES:[Lcom/airbnb/lottie/model/DocumentData$Justification;

    invoke-virtual {v0}, [Lcom/airbnb/lottie/model/DocumentData$Justification;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/model/DocumentData$Justification;

    return-object v0
.end method
