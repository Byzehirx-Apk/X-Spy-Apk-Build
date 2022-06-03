.class final enum Lcom/bumptech/glide/request/GenericRequest$Status;
.super Ljava/lang/Enum;
.source "GenericRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/GenericRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bumptech/glide/request/GenericRequest$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bumptech/glide/request/GenericRequest$Status;

.field public static final enum CANCELLED:Lcom/bumptech/glide/request/GenericRequest$Status;

.field public static final enum CLEARED:Lcom/bumptech/glide/request/GenericRequest$Status;

.field public static final enum COMPLETE:Lcom/bumptech/glide/request/GenericRequest$Status;

.field public static final enum FAILED:Lcom/bumptech/glide/request/GenericRequest$Status;

.field public static final enum PAUSED:Lcom/bumptech/glide/request/GenericRequest$Status;

.field public static final enum PENDING:Lcom/bumptech/glide/request/GenericRequest$Status;

.field public static final enum RUNNING:Lcom/bumptech/glide/request/GenericRequest$Status;

.field public static final enum WAITING_FOR_SIZE:Lcom/bumptech/glide/request/GenericRequest$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 42
    new-instance v0, Lcom/bumptech/glide/request/GenericRequest$Status;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "PENDING"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/request/GenericRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->PENDING:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 44
    new-instance v0, Lcom/bumptech/glide/request/GenericRequest$Status;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "RUNNING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/request/GenericRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->RUNNING:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 46
    new-instance v0, Lcom/bumptech/glide/request/GenericRequest$Status;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "WAITING_FOR_SIZE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/request/GenericRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 48
    new-instance v0, Lcom/bumptech/glide/request/GenericRequest$Status;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "COMPLETE"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/request/GenericRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 50
    new-instance v0, Lcom/bumptech/glide/request/GenericRequest$Status;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "FAILED"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/request/GenericRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->FAILED:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 52
    new-instance v0, Lcom/bumptech/glide/request/GenericRequest$Status;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "CANCELLED"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/request/GenericRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->CANCELLED:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 54
    new-instance v0, Lcom/bumptech/glide/request/GenericRequest$Status;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "CLEARED"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/request/GenericRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->CLEARED:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 56
    new-instance v0, Lcom/bumptech/glide/request/GenericRequest$Status;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "PAUSED"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/request/GenericRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->PAUSED:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 40
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/bumptech/glide/request/GenericRequest$Status;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/bumptech/glide/request/GenericRequest$Status;->PENDING:Lcom/bumptech/glide/request/GenericRequest$Status;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/bumptech/glide/request/GenericRequest$Status;->RUNNING:Lcom/bumptech/glide/request/GenericRequest$Status;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/bumptech/glide/request/GenericRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/GenericRequest$Status;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Lcom/bumptech/glide/request/GenericRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/GenericRequest$Status;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Lcom/bumptech/glide/request/GenericRequest$Status;->FAILED:Lcom/bumptech/glide/request/GenericRequest$Status;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget-object v3, Lcom/bumptech/glide/request/GenericRequest$Status;->CANCELLED:Lcom/bumptech/glide/request/GenericRequest$Status;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    sget-object v3, Lcom/bumptech/glide/request/GenericRequest$Status;->CLEARED:Lcom/bumptech/glide/request/GenericRequest$Status;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    sget-object v3, Lcom/bumptech/glide/request/GenericRequest$Status;->PAUSED:Lcom/bumptech/glide/request/GenericRequest$Status;

    aput-object v3, v1, v2

    sput-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->$VALUES:[Lcom/bumptech/glide/request/GenericRequest$Status;

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
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/GenericRequest$Status;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/request/GenericRequest$Status;
    .locals 3

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/bumptech/glide/request/GenericRequest$Status;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/GenericRequest$Status;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/bumptech/glide/request/GenericRequest$Status;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->$VALUES:[Lcom/bumptech/glide/request/GenericRequest$Status;

    invoke-virtual {v0}, [Lcom/bumptech/glide/request/GenericRequest$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/request/GenericRequest$Status;

    return-object v0
.end method
