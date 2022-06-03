.class public Lcom/google/appinventor/components/runtime/util/YailConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final YAIL_HEADER:Lgnu/mapping/SimpleSymbol;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 18
    new-instance v0, Lgnu/mapping/SimpleSymbol;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "*list*"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/YailConstants;->YAIL_HEADER:Lgnu/mapping/SimpleSymbol;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method
