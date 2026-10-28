.class public Lcom/ipaulpro/afilechooser/utils/MimeTypes;
.super Ljava/lang/Object;
.source "MimeTypes.java"


# instance fields
.field private mMimeTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ipaulpro/afilechooser/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    .line 31
    return-void
.end method


# virtual methods
.method public getMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 67
    invoke-static {p1}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->getFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ipaulpro/afilechooser/utils/MimeTypes;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {p1}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "extension":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 47
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "webkitMimeType":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 62
    .end local v2    # "webkitMimeType":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 56
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 58
    iget-object v3, p0, Lcom/ipaulpro/afilechooser/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 60
    .local v1, "mimetype":Ljava/lang/String;
    if-nez v1, :cond_1

    const-string v1, "*/*"

    :cond_1
    move-object v2, v1

    .line 62
    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "extension"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 37
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/utils/MimeTypes;->mMimeTypes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method
