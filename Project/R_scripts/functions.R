custom_var <- function(array){
  fvar = 0
  for(i in seq_len(array)){
    if(i != seq_len(array)){
      fvar = var + (array[i]-array[i+1])^2
    }
  }
  return(fvar/seq_len(array))
}

custom_var(X1_Bitcoin$VolumeTraded)
