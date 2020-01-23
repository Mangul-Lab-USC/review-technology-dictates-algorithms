import numpy as np
import pandas as pd

if __name__ == '__main__':
    table_df = pd.read_csv('../raw_data/Tool_Info.csv')
    table_df.loc[:,'seed_type'] = table_df.loc[:,'fix_length_seed'] + table_df.loc[:,'spaced_seed'] + table_df.loc[:,'seed_chaining']
    tool_df = table_df.groupby(['indexing', 'seed_type', 'pairwise_alignment']).size().to_frame(name = 'count').reset_index().to_csv(index=False, path_or_buf="../raw_data/aggregate_tool_info.csv")

