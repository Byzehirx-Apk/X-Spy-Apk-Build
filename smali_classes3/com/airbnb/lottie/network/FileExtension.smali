.class public final enum Lcom/airbnb/lottie/network/FileExtension;
.super Ljava/lang/Enum;
.source "FileExtension.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/lottie/network/FileExtension;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/lottie/network/FileExtension;

.field public static final enum JSON:Lcom/airbnb/lottie/network/FileExtension;

.field public static final enum ZIP:Lcom/airbnb/lottie/network/FileExtension;


# instance fields
.field public final extension:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 9
    new-instance v0, Lcom/airbnb/lottie/network/FileExtension;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "JSON"

    const/4 v3, 0x0

    const-string/jumbo v4, ".json"

    invoke-direct {v1, v2, v3, v4}, Lcom/airbnb/lottie/network/FileExtension;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/lottie/network/FileExtension;->JSON:Lcom/airbnb/lottie/network/FileExtension;

    .line 10
    new-instance v0, Lcom/airbnb/lottie/network/FileExtension;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string/jumbo v2, "ZIP"

    const/4 v3, 0x1

    const-string/jumbo v4, ".zip"

    invoke-direct {v1, v2, v3, v4}, Lcom/airbnb/lottie/network/FileExtension;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/lottie/network/FileExtension;->ZIP:Lcom/airbnb/lottie/network/FileExtension;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/airbnb/lottie/network/FileExtension;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x0

    sget-object v3, Lcom/airbnb/lottie/network/FileExtension;->JSON:Lcom/airbnb/lottie/network/FileExtension;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x1

    sget-object v3, Lcom/airbnb/lottie/network/FileExtension;->ZIP:Lcom/airbnb/lottie/network/FileExtension;

    aput-object v3, v1, v2

    sput-object v0, Lcom/airbnb/lottie/network/FileExtension;->$VALUES:[Lcom/airbnb/lottie/network/FileExtension;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/network/FileExtension;
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .local v3, "extension":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/airbnb/lottie/network/FileExtension;->extension:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static forFile(Ljava/lang/String;)Lcom/airbnb/lottie/network/FileExtension;
    .locals 8

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "filename":Ljava/lang/String;
    invoke-static {}, Lcom/airbnb/lottie/network/FileExtension;->values()[Lcom/airbnb/lottie/network/FileExtension;

    move-result-object v5

    move-object v1, v5

    move-object v5, v1

    array-length v5, v5

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 28
    .local v4, "e":Lcom/airbnb/lottie/network/FileExtension;
    move-object v5, v0

    move-object v6, v4

    iget-object v6, v6, Lcom/airbnb/lottie/network/FileExtension;->extension:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 29
    move-object v5, v4

    move-object v0, v5

    .line 34
    .end local v0    # "filename":Ljava/lang/String;
    .end local v4    # "e":Lcom/airbnb/lottie/network/FileExtension;
    :goto_1
    return-object v0

    .line 27
    .restart local v0    # "filename":Ljava/lang/String;
    .restart local v4    # "e":Lcom/airbnb/lottie/network/FileExtension;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 33
    .end local v4    # "e":Lcom/airbnb/lottie/network/FileExtension;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to find correct extension for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 34
    sget-object v5, Lcom/airbnb/lottie/network/FileExtension;->JSON:Lcom/airbnb/lottie/network/FileExtension;

    move-object v0, v5

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/network/FileExtension;
    .locals 3

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/airbnb/lottie/network/FileExtension;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/network/FileExtension;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/airbnb/lottie/network/FileExtension;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/airbnb/lottie/network/FileExtension;->$VALUES:[Lcom/airbnb/lottie/network/FileExtension;

    invoke-virtual {v0}, [Lcom/airbnb/lottie/network/FileExtension;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/network/FileExtension;

    return-object v0
.end method


# virtual methods
.method public tempExtension()Ljava/lang/String;
    .locals 4

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/network/FileExtension;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ".temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/network/FileExtension;->extension:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/network/FileExtension;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lcom/airbnb/lottie/network/FileExtension;
    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/network/FileExtension;->extension:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/airbnb/lottie/network/FileExtension;
    return-object v0
.end method
