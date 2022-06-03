.class public Lgnu/kawa/xml/Document;
.super Ljava/lang/Object;
.source "Document.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/kawa/xml/Document$DocReference;
    }
.end annotation


# static fields
.field private static cache:Ljava/util/HashMap;

.field private static docMapLocation:Lgnu/mapping/ThreadLocation;

.field public static final document:Lgnu/kawa/xml/Document;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 17
    new-instance v0, Lgnu/kawa/xml/Document;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lgnu/kawa/xml/Document;-><init>()V

    sput-object v0, Lgnu/kawa/xml/Document;->document:Lgnu/kawa/xml/Document;

    .line 39
    new-instance v0, Lgnu/mapping/ThreadLocation;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "document-map"

    invoke-direct {v1, v2}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/Document;->docMapLocation:Lgnu/mapping/ThreadLocation;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lgnu/kawa/xml/Document;->cache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/Document;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static clearLocalCache()V
    .locals 3

    .prologue
    .line 61
    sget-object v1, Lgnu/kawa/xml/Document;->docMapLocation:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v1}, Lgnu/mapping/ThreadLocation;->getLocation()Lgnu/mapping/NamedLocation;

    move-result-object v1

    move-object v0, v1

    .line 62
    .local v0, "loc":Lgnu/mapping/Location;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public static clearSoftCache()V
    .locals 3

    .prologue
    .line 69
    new-instance v0, Ljava/util/HashMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lgnu/kawa/xml/Document;->cache:Ljava/util/HashMap;

    .line 71
    return-void
.end method

.method public static parse(Ljava/lang/Object;)Lgnu/kawa/xml/KDocument;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "uri":Ljava/lang/Object;
    new-instance v2, Lgnu/xml/NodeTree;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Lgnu/xml/NodeTree;-><init>()V

    move-object v1, v2

    .line 35
    .local v1, "tree":Lgnu/xml/NodeTree;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lgnu/kawa/xml/Document;->parse(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 36
    new-instance v2, Lgnu/kawa/xml/KDocument;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    const/16 v5, 0xa

    invoke-direct {v3, v4, v5}, Lgnu/kawa/xml/KDocument;-><init>(Lgnu/xml/NodeTree;I)V

    move-object v0, v2

    .end local v0    # "uri":Ljava/lang/Object;
    return-object v0
.end method

.method public static parse(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "name":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "out":Lgnu/lists/Consumer;
    new-instance v3, Lgnu/text/SourceMessages;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lgnu/text/SourceMessages;-><init>()V

    move-object v2, v3

    .line 22
    .local v2, "messages":Lgnu/text/SourceMessages;
    move-object v3, v1

    instance-of v3, v3, Lgnu/lists/XConsumer;

    if-eqz v3, :cond_0

    .line 23
    move-object v3, v1

    check-cast v3, Lgnu/lists/XConsumer;

    move-object v4, v0

    invoke-interface {v3, v4}, Lgnu/lists/XConsumer;->beginEntity(Ljava/lang/Object;)V

    .line 24
    :cond_0
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lgnu/xml/XMLParser;->parse(Ljava/lang/Object;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V

    .line 25
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 26
    new-instance v3, Lgnu/text/SyntaxException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "document function read invalid XML"

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lgnu/text/SyntaxException;-><init>(Ljava/lang/String;Lgnu/text/SourceMessages;)V

    throw v3

    .line 28
    :cond_1
    move-object v3, v1

    instance-of v3, v3, Lgnu/lists/XConsumer;

    if-eqz v3, :cond_2

    .line 29
    move-object v3, v1

    check-cast v3, Lgnu/lists/XConsumer;

    invoke-interface {v3}, Lgnu/lists/XConsumer;->endEntity()V

    .line 30
    :cond_2
    return-void
.end method

.method public static declared-synchronized parseCached(Lgnu/text/Path;)Lgnu/kawa/xml/KDocument;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "uri":Lgnu/text/Path;
    const-class v11, Lgnu/kawa/xml/Document;

    monitor-enter v11

    :goto_0
    :try_start_0
    sget-object v5, Lgnu/kawa/xml/Document$DocReference;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v5}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v5

    check-cast v5, Lgnu/kawa/xml/Document$DocReference;

    move-object v1, v5

    .line 86
    .local v1, "oldref":Lgnu/kawa/xml/Document$DocReference;
    move-object v5, v1

    if-nez v5, :cond_1

    .line 87
    .line 91
    sget-object v5, Lgnu/kawa/xml/Document;->docMapLocation:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v5}, Lgnu/mapping/ThreadLocation;->getLocation()Lgnu/mapping/NamedLocation;

    move-result-object v5

    move-object v1, v5

    .line 92
    .local v1, "loc":Lgnu/mapping/Location;
    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Hashtable;

    move-object v2, v5

    .line 93
    .local v2, "map":Ljava/util/Hashtable;
    move-object v5, v2

    if-nez v5, :cond_0

    .line 95
    new-instance v5, Ljava/util/Hashtable;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    move-object v2, v5

    .line 96
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v5, v6}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 98
    :cond_0
    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/kawa/xml/KDocument;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v5

    .line 99
    .local v3, "doc":Lgnu/kawa/xml/KDocument;
    move-object v5, v3

    if-eqz v5, :cond_2

    .line 100
    move-object v5, v3

    move-object v0, v5

    .line 120
    .end local v0    # "uri":Lgnu/text/Path;
    :goto_1
    monitor-exit v11

    return-object v0

    .line 88
    .end local v2    # "map":Ljava/util/Hashtable;
    .end local v3    # "doc":Lgnu/kawa/xml/KDocument;
    .restart local v0    # "uri":Lgnu/text/Path;
    .local v1, "oldref":Lgnu/kawa/xml/Document$DocReference;
    :cond_1
    :try_start_1
    sget-object v5, Lgnu/kawa/xml/Document;->cache:Ljava/util/HashMap;

    move-object v6, v1

    iget-object v6, v6, Lgnu/kawa/xml/Document$DocReference;->key:Lgnu/text/Path;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 89
    goto :goto_0

    .line 102
    .local v1, "loc":Lgnu/mapping/Location;
    .restart local v2    # "map":Ljava/util/Hashtable;
    .restart local v3    # "doc":Lgnu/kawa/xml/KDocument;
    :cond_2
    sget-object v5, Lgnu/kawa/xml/Document;->cache:Ljava/util/HashMap;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/kawa/xml/Document$DocReference;

    move-object v4, v5

    .line 103
    .local v4, "ref":Lgnu/kawa/xml/Document$DocReference;
    move-object v5, v4

    if-eqz v5, :cond_3

    .line 105
    move-object v5, v4

    invoke-virtual {v5}, Lgnu/kawa/xml/Document$DocReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/kawa/xml/KDocument;

    move-object v3, v5

    .line 106
    move-object v5, v3

    if-nez v5, :cond_4

    .line 107
    sget-object v5, Lgnu/kawa/xml/Document;->cache:Ljava/util/HashMap;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 115
    :cond_3
    move-object v5, v0

    invoke-static {v5}, Lgnu/kawa/xml/Document;->parse(Ljava/lang/Object;)Lgnu/kawa/xml/KDocument;

    move-result-object v5

    move-object v3, v5

    .line 116
    move-object v5, v2

    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 118
    sget-object v5, Lgnu/kawa/xml/Document;->cache:Ljava/util/HashMap;

    move-object v6, v0

    new-instance v7, Lgnu/kawa/xml/Document$DocReference;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Lgnu/kawa/xml/Document$DocReference;-><init>(Lgnu/text/Path;Lgnu/kawa/xml/KDocument;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 120
    move-object v5, v3

    move-object v0, v5

    goto :goto_1

    .line 110
    :cond_4
    move-object v5, v2

    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 111
    move-object v5, v3

    move-object v0, v5

    goto :goto_1

    .line 85
    .end local v1    # "loc":Lgnu/mapping/Location;
    .end local v2    # "map":Ljava/util/Hashtable;
    .end local v3    # "doc":Lgnu/kawa/xml/KDocument;
    .end local v4    # "ref":Lgnu/kawa/xml/Document$DocReference;
    :catchall_0
    move-exception v0

    monitor-exit v11

    .end local v0    # "uri":Lgnu/text/Path;
    throw v0
.end method

.method public static parseCached(Ljava/lang/Object;)Lgnu/kawa/xml/KDocument;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "uri":Ljava/lang/Object;
    move-object v1, v0

    invoke-static {v1}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v1

    invoke-static {v1}, Lgnu/kawa/xml/Document;->parseCached(Lgnu/text/Path;)Lgnu/kawa/xml/KDocument;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "uri":Ljava/lang/Object;
    return-object v0
.end method
