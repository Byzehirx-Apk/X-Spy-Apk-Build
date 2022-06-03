.class public Lgnu/kawa/xml/OutputAsXML;
.super Lgnu/mapping/Procedure1;
.source "OutputAsXML.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/OutputAsXML;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/Procedure1;-><init>()V

    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/OutputAsXML;
    move-object v1, p1

    .local v1, "arg":Ljava/lang/Object;
    new-instance v4, Lgnu/mapping/CharArrayOutPort;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lgnu/mapping/CharArrayOutPort;-><init>()V

    move-object v2, v4

    .line 19
    .local v2, "port":Lgnu/mapping/CharArrayOutPort;
    new-instance v4, Lgnu/xml/XMLPrinter;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Lgnu/xml/XMLPrinter;-><init>(Ljava/io/Writer;)V

    move-object v3, v4

    .line 20
    .local v3, "out":Lgnu/xml/XMLPrinter;
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/xml/XMLPrinter;->writeObject(Ljava/lang/Object;)V

    .line 21
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/xml/XMLPrinter;->flush()V

    .line 22
    new-instance v4, Lgnu/lists/FString;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-virtual {v6}, Lgnu/mapping/CharArrayOutPort;->toCharArray()[C

    move-result-object v6

    invoke-direct {v5, v6}, Lgnu/lists/FString;-><init>([C)V

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/xml/OutputAsXML;
    return-object v0
.end method

.method public numArgs()I
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/OutputAsXML;
    const/16 v1, 0x1001

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/OutputAsXML;
    return v0
.end method
