.class public Lgnu/kawa/xml/MakeUnescapedData;
.super Lgnu/mapping/Procedure1;
.source "MakeUnescapedData.java"


# static fields
.field public static final unescapedData:Lgnu/kawa/xml/MakeUnescapedData;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 7
    new-instance v0, Lgnu/kawa/xml/MakeUnescapedData;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/kawa/xml/MakeUnescapedData;-><init>()V

    sput-object v0, Lgnu/kawa/xml/MakeUnescapedData;->unescapedData:Lgnu/kawa/xml/MakeUnescapedData;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/MakeUnescapedData;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/Procedure1;-><init>()V

    .line 12
    move-object v1, v0

    sget-object v2, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v3, "gnu.kawa.xml.CompileXmlFunctions:validateApplyMakeUnescapedData"

    invoke-virtual {v1, v2, v3}, Lgnu/kawa/xml/MakeUnescapedData;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/MakeUnescapedData;
    move-object v1, p1

    .local v1, "arg":Ljava/lang/Object;
    new-instance v2, Lgnu/lists/UnescapedData;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    if-nez v4, :cond_0

    const-string/jumbo v4, ""

    :goto_0
    invoke-direct {v3, v4}, Lgnu/lists/UnescapedData;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/xml/MakeUnescapedData;
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/xml/MakeUnescapedData;
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
