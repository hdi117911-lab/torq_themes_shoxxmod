.class public Lcom/ipaulpro/afilechooser/FileLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "FileLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/io/File;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final FILE_OBSERVER_MASK:I = 0xfc2


# instance fields
.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mFileObserver:Landroid/os/FileObserver;

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object p2, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mPath:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/ipaulpro/afilechooser/FileLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileLoader;->isReset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    invoke-virtual {p0, p1}, Lcom/ipaulpro/afilechooser/FileLoader;->onReleaseResources(Ljava/util/List;)V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mData:Ljava/util/List;

    .line 66
    .local v0, "oldData":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iput-object p1, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mData:Ljava/util/List;

    .line 68
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 71
    :cond_2
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 72
    invoke-virtual {p0, v0}, Lcom/ipaulpro/afilechooser/FileLoader;->onReleaseResources(Ljava/util/List;)V

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->getFileList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/ipaulpro/afilechooser/FileLoader;->onCanceled(Ljava/util/List;)V

    return-void
.end method

.method public onCanceled(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 113
    invoke-virtual {p0, p1}, Lcom/ipaulpro/afilechooser/FileLoader;->onReleaseResources(Ljava/util/List;)V

    .line 114
    return-void
.end method

.method protected onReleaseResources(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mFileObserver:Landroid/os/FileObserver;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mFileObserver:Landroid/os/FileObserver;

    .line 122
    :cond_0
    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileLoader;->onStopLoading()V

    .line 103
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mData:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/ipaulpro/afilechooser/FileLoader;->onReleaseResources(Ljava/util/List;)V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mData:Ljava/util/List;

    .line 107
    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mData:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/ipaulpro/afilechooser/FileLoader;->deliverResult(Ljava/util/List;)V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mFileObserver:Landroid/os/FileObserver;

    if-nez v0, :cond_1

    .line 81
    new-instance v0, Lcom/ipaulpro/afilechooser/FileLoader$1;

    iget-object v1, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mPath:Ljava/lang/String;

    const/16 v2, 0xfc2

    invoke-direct {v0, p0, v1, v2}, Lcom/ipaulpro/afilechooser/FileLoader$1;-><init>(Lcom/ipaulpro/afilechooser/FileLoader;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mFileObserver:Landroid/os/FileObserver;

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 90
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileLoader;->mData:Ljava/util/List;

    if-nez v0, :cond_3

    .line 91
    :cond_2
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileLoader;->forceLoad()V

    .line 92
    :cond_3
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileLoader;->cancelLoad()Z

    .line 97
    return-void
.end method
