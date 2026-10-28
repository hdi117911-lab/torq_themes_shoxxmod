.class public Lcom/ipaulpro/afilechooser/FileListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FileListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ipaulpro/afilechooser/FileListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final ICON_FILE:I

.field private static final ICON_FOLDER:I


# instance fields
.field private mFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/ipaulpro/afilechooser/R$drawable;->ic_folder:I

    sput v0, Lcom/ipaulpro/afilechooser/FileListAdapter;->ICON_FOLDER:I

    .line 42
    sget v0, Lcom/ipaulpro/afilechooser/R$drawable;->ic_file:I

    sput v0, Lcom/ipaulpro/afilechooser/FileListAdapter;->ICON_FILE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ipaulpro/afilechooser/FileListAdapter;->mFiles:Ljava/util/List;

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaulpro/afilechooser/FileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 49
    return-void
.end method


# virtual methods
.method public add(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileListAdapter;->mFiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileListAdapter;->notifyDataSetChanged()V

    .line 68
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileListAdapter;->mFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 72
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileListAdapter;->notifyDataSetChanged()V

    .line 73
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileListAdapter;->mFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileListAdapter;->mFiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 82
    int-to-long v0, p1

    return-wide v0
.end method

.method public getListItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileListAdapter;->mFiles:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 87
    move-object v2, p2

    .line 88
    .local v2, "row":Landroid/view/View;
    const/4 v1, 0x0

    .line 90
    .local v1, "holder":Lcom/ipaulpro/afilechooser/FileListAdapter$ViewHolder;
    if-nez v2, :cond_0

    .line 91
    iget-object v3, p0, Lcom/ipaulpro/afilechooser/FileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/ipaulpro/afilechooser/R$layout;->file:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 92
    new-instance v1, Lcom/ipaulpro/afilechooser/FileListAdapter$ViewHolder;

    .end local v1    # "holder":Lcom/ipaulpro/afilechooser/FileListAdapter$ViewHolder;
    invoke-direct {v1, v2}, Lcom/ipaulpro/afilechooser/FileListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 93
    .restart local v1    # "holder":Lcom/ipaulpro/afilechooser/FileListAdapter$ViewHolder;
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 100
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ipaulpro/afilechooser/FileListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 103
    .local v0, "file":Ljava/io/File;
    iget-object v3, v1, Lcom/ipaulpro/afilechooser/FileListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v4, v1, Lcom/ipaulpro/afilechooser/FileListAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Lcom/ipaulpro/afilechooser/FileListAdapter;->ICON_FOLDER:I

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    return-object v2

    .line 96
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lcom/ipaulpro/afilechooser/FileListAdapter$ViewHolder;
    check-cast v1, Lcom/ipaulpro/afilechooser/FileListAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/ipaulpro/afilechooser/FileListAdapter$ViewHolder;
    goto :goto_0

    .line 107
    .restart local v0    # "file":Ljava/io/File;
    :cond_1
    sget v3, Lcom/ipaulpro/afilechooser/FileListAdapter;->ICON_FILE:I

    goto :goto_1
.end method

.method public setListItems(Ljava/util/List;)V
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
    .line 56
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iput-object p1, p0, Lcom/ipaulpro/afilechooser/FileListAdapter;->mFiles:Ljava/util/List;

    .line 57
    invoke-virtual {p0}, Lcom/ipaulpro/afilechooser/FileListAdapter;->notifyDataSetChanged()V

    .line 58
    return-void
.end method
