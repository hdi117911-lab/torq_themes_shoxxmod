.class public Lcom/ipaulpro/afilechooser/FileListFragment;
.super Landroid/support/v4/app/ListFragment;
.source "FileListFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/ListFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/io/File;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final LOADER_ID:I


# instance fields
.field private mAdapter:Lcom/ipaulpro/afilechooser/FileListAdapter;

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/ipaulpro/afilechooser/FileListFragment;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 53
    new-instance v1, Lcom/ipaulpro/afilechooser/FileListFragment;

    invoke-direct {v1}, Lcom/ipaulpro/afilechooser/FileListFragment;-><init>()V

    .line 54
    .local v1, "fragment":Lcom/ipaulpro/afilechooser/FileListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "path"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1, v0}, Lcom/ipaulpro/afilechooser/FileListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 58
    return-object v1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 73
    sget v0, Lcom/ipaulpro/afilechooser/R$string;->empty_directory:I

    invoke-virtual {p0, v0}, Lcom/ipaulpro/afilechooser/FileListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ipaulpro/afilechooser/FileListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileListFragment;->mAdapter:Lcom/ipaulpro/afilechooser/FileListAdapter;

    invoke-virtual {p0, v0}, Lcom/ipaulpro/afilechooser/FileListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    invoke-virtual {p0, v2}, Lcom/ipaulpro/afilechooser/FileListFragment;->setListShown(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 79
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 80
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    new-instance v0, Lcom/ipaulpro/afilechooser/FileListAdapter;

    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ipaulpro/afilechooser/FileListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ipaulpro/afilechooser/FileListFragment;->mAdapter:Lcom/ipaulpro/afilechooser/FileListAdapter;

    .line 66
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 67
    const-string v1, "path"

    .line 66
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/ipaulpro/afilechooser/FileListFragment;->mPath:Ljava/lang/String;

    .line 69
    return-void

    .line 68
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Lcom/ipaulpro/afilechooser/FileLoader;

    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/ipaulpro/afilechooser/FileListFragment;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/ipaulpro/afilechooser/FileLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/ipaulpro/afilechooser/FileListAdapter;

    .line 85
    .local v0, "adapter":Lcom/ipaulpro/afilechooser/FileListAdapter;
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0, p3}, Lcom/ipaulpro/afilechooser/FileListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 87
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ipaulpro/afilechooser/FileListFragment;->mPath:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/ipaulpro/afilechooser/FileChooserActivity;

    invoke-virtual {v2, v1}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->onFileSelected(Ljava/io/File;)V

    .line 90
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/support/v4/content/Loader;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/ipaulpro/afilechooser/FileListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/List<Ljava/io/File;>;>;"
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v1, 0x1

    .line 99
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileListFragment;->mAdapter:Lcom/ipaulpro/afilechooser/FileListAdapter;

    invoke-virtual {v0, p2}, Lcom/ipaulpro/afilechooser/FileListAdapter;->setListItems(Ljava/util/List;)V

    .line 101
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileListFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0, v1}, Lcom/ipaulpro/afilechooser/FileListFragment;->setListShown(Z)V

    .line 105
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {p0, v1}, Lcom/ipaulpro/afilechooser/FileListFragment;->setListShownNoAnimation(Z)V

    goto :goto_0
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/List<Ljava/io/File;>;>;"
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileListFragment;->mAdapter:Lcom/ipaulpro/afilechooser/FileListAdapter;

    invoke-virtual {v0}, Lcom/ipaulpro/afilechooser/FileListAdapter;->clear()V

    .line 110
    return-void
.end method
