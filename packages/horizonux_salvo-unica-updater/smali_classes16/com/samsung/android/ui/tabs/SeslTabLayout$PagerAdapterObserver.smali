.class Lcom/samsung/android/ui/tabs/SeslTabLayout$PagerAdapterObserver;
.super Landroid/database/DataSetObserver;
.source "SeslTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/tabs/SeslTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerAdapterObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/ui/tabs/SeslTabLayout;)V
    .locals 0

    .line 1388
    iput-object p1, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$PagerAdapterObserver;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 1389
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1392
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$PagerAdapterObserver;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    invoke-virtual {v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->populateFromPagerAdapter()V

    .line 1393
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 1396
    iget-object v0, p0, Lcom/samsung/android/ui/tabs/SeslTabLayout$PagerAdapterObserver;->this$0:Lcom/samsung/android/ui/tabs/SeslTabLayout;

    invoke-virtual {v0}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->populateFromPagerAdapter()V

    .line 1397
    return-void
.end method
